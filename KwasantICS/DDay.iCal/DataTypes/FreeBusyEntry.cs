﻿using KwasantICS.DDay.iCal.Interfaces.DataTypes;
using KwasantICS.DDay.iCal.Interfaces.General;

namespace KwasantICS.DDay.iCal.DataTypes
{
    public class FreeBusyEntry :
        Period,
        IFreeBusyEntry
    {
        #region Private Fields

        FreeBusyStatus _Status;

        #endregion

        #region Constructors

        public FreeBusyEntry() : base() { Initialize(); }
        public FreeBusyEntry(IPeriod period, FreeBusyStatus status) : base()
        {
            Initialize();
            CopyFrom(period);
            Status = status;
        }

        void Initialize()
        {
            Status = FreeBusyStatus.Busy;
        }

        #endregion

        #region Overrides

        public override void CopyFrom(ICopyable obj)
        {
            base.CopyFrom(obj);

            IFreeBusyEntry fb = obj as IFreeBusyEntry;
            if (fb != null)
            {
                Status = fb.Status;
            }
        }

        #endregion

        #region IFreeBusyEntry Members

        virtual public FreeBusyStatus Status
        {
            get { return _Status; }
            set { _Status = value; }
        }

        #endregion
    }
}
