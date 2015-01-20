﻿using System;
using System.Collections.Generic;
using System.Reflection;
using System.Threading;
using Daemons.EventExposers;
using Utilities.Logging;

namespace Daemons
{
    //For more information, see https://maginot.atlassian.net/wiki/display/SH/Design+Document%3A+SH-21
    public abstract class Daemon
    {
        public delegate void DaemonExecutedEventHandler();
        public event DaemonExecutedEventHandler DaemonExecuted;

        private Thread m_RunningThread;

        public abstract int WaitTimeBetweenExecution { get; }

        public bool IsRunning { get; private set; }
        public bool IsStopping { get; private set; }

        protected abstract void Run();
        private readonly Queue<Action> _eventQueue = new Queue<Action>();
        private readonly HashSet<EventInfo> _activeEventHandlers = new HashSet<EventInfo>();
        private readonly HashSet<Exception> _loggedExceptions = new HashSet<Exception>();

        
        public Daemon()
        {
            
        }

        /// <summary>
        /// Currently unused, but will be a useful debugging tool when investigating event callbacks.
        /// </summary>
        public IList<Exception> LoggedExceptions
        {
            get
            {
                lock(_loggedExceptions)
                    return new List<Exception>(_loggedExceptions);
            }
        }

        /// <summary>
        /// Currently unused, but will be a useful debugging tool when investigating event callbacks.
        /// </summary>
        protected IList<EventInfo> ActiveEventHandlers
        {
            get { return new List<EventInfo>(_activeEventHandlers); }
        }

        /// <summary>
        /// Registers an event. Event callbacks will be marshalled into a thread-safe queue. The event will _not_ be dispatched automatically.
        /// To process an event, call <see cref="ProcessNextEvent">ProcessNextEvent</see> or <see cref="ProcessNextEventNoWait">ProcessNextEventNoWait</see>
        /// </summary>
        /// <param name="eventInfo">The EventInfo of your desired event. You can pass this manually, or use <see cref="ExposedEvent">ExposedEvent</see></param>
        /// <param name="callback">The delegate to be invoked when the queue is processed</param>
        protected void RegisterEvent<TArg1>(EventInfo eventInfo, Action<TArg1> callback)
        {
            Action<TArg1> action = arg1 =>
            {
                lock (_eventQueue)
                {
                    _eventQueue.Enqueue(() => callback(arg1));
                    Monitor.Pulse(_eventQueue);
                }
            };

            Delegate handler = Delegate.CreateDelegate(eventInfo.EventHandlerType, action.Target, action.Method);
            eventInfo.AddEventHandler(this, handler);

            _activeEventHandlers.Add(eventInfo);
        }
        protected void RegisterEvent<TArg1, TArg2>(EventInfo eventInfo, Action<TArg1, TArg2> callback)
        {
            Action<TArg1, TArg2> action = (arg1, arg2) =>
            {
                lock (_eventQueue)
                {
                    _eventQueue.Enqueue(() => callback(arg1, arg2));
                    Monitor.Pulse(_eventQueue);
                }
            };

            Delegate handler = Delegate.CreateDelegate(eventInfo.EventHandlerType, action.Target, action.Method);
            eventInfo.AddEventHandler(this, handler);

            _activeEventHandlers.Add(eventInfo);
        }

        protected void RegisterEvent<TArg1, TArg2, TArg3>(EventInfo eventInfo, Action<TArg1, TArg2, TArg3> callback)
        {
            Action<TArg1, TArg2, TArg3> action = (arg1, arg2, arg3) =>
            {
                lock (_eventQueue)
                {
                    _eventQueue.Enqueue(() => callback(arg1, arg2, arg3));
                    Monitor.Pulse(_eventQueue);
                }
            };

            Delegate handler = Delegate.CreateDelegate(eventInfo.EventHandlerType, action.Target, action.Method);
            eventInfo.AddEventHandler(this, handler);

            _activeEventHandlers.Add(eventInfo);
        }

        protected void RegisterEvent<TArg1, TArg2, TArg3, TArg4>(EventInfo eventInfo, Action<TArg1, TArg2, TArg3, TArg4> callback)
        {
            Action<TArg1, TArg2, TArg3, TArg4> action = (arg1, arg2, arg3, arg4) =>
            {
                lock (_eventQueue)
                {
                    _eventQueue.Enqueue(() => callback(arg1, arg2, arg3, arg4));
                    Monitor.Pulse(_eventQueue);
                }
            };

            Delegate handler = Delegate.CreateDelegate(eventInfo.EventHandlerType, action.Target, action.Method);
            eventInfo.AddEventHandler(this, handler);

            _activeEventHandlers.Add(eventInfo);
        }

        /// <summary>
        /// Fires off the next event to the listening delegate, and will block until an event is received if no events are pending processing
        /// </summary>
        protected void ProcessNextEvent()
        {
            lock (_eventQueue)
            {
                while (_eventQueue.Count == 0)
                {
                    Monitor.Wait(_eventQueue);
                }
                _eventQueue.Dequeue()();
            }
        }

        /// <summary>
        /// Fires off the next event to the listening delegate. If no events are pending, it will not block. Returns true if an event was processed, false if not.
        /// </summary>
        /// <returns></returns>
        protected bool ProcessNextEventNoWait()
        {
            lock (_eventQueue)
            {
                if (_eventQueue.Count > 0)
                {
                    _eventQueue.Dequeue()();
                    return true;
                }
                return false;
            }
        }

        public bool Start()
        {
            Logger.GetLogger().Info(GetType().Name + " - starting...");
            lock (this)
            {
                if (IsRunning)
                {
                    Logger.GetLogger().Info(GetType().Name + " - already running.");
                    return false;
                }

                IsRunning = true;
            }

            IsStopping = false;

            m_RunningThread = new Thread(() =>
                {
                    bool firstExecution = true;
                    DateTime lastExecutionTime = DateTime.Now;
                    while (!IsStopping)
                    {
                        try
                        {
                            DateTime currTime = DateTime.Now;    
                            if (firstExecution ||
                                (currTime - lastExecutionTime).TotalMilliseconds > WaitTimeBetweenExecution)
                            {
                                lastExecutionTime = currTime;
                                firstExecution = false;
                                // Logger.GetLogger().Info(GetType().Name + " - executing...");
                                Run();
                                if (DaemonExecuted != null)
                                    DaemonExecuted();
                            }
                            else
                            {
                                //Sleep until the approximate time that we're ready
                                double waitTime = (WaitTimeBetweenExecution - (currTime - lastExecutionTime).TotalMilliseconds);

                                //Logger.GetLogger().Info(GetType().Name + " - sleeping for " + waitTime + " milliseconds");
                                Thread.Sleep((int)waitTime);
                            }
                            
                        }
                        catch (Exception e)
                        {
                            HandleException(e);
                        }
                    }
                    Logger.GetLogger().Info(GetType().Name + " - shutting down");

                    CleanupInternal();
                    IsRunning = false;
                });

            m_RunningThread.Start();
            return true;
        }

        public void Stop()
        {
            IsStopping = true;
        }

        private void CleanupInternal()
        {
            CleanUp();
        }

        /// <summary>
        /// Allows the daemon to cleanup any resources. Called when the daemon is shutting down
        /// </summary>
        protected virtual void CleanUp()
        {
            
        }

        private void HandleException(Exception e)
        {
            lock (_loggedExceptions)
                _loggedExceptions.Add(e);

            Logger.GetLogger().Error("Error occured in " + GetType().Name, e);
        }
    }
}
