﻿using System;
using KwasantICS.DDay.iCal.Interfaces.Components;
using KwasantICS.DDay.iCal.Interfaces.DataTypes;

namespace KwasantICS.DDay.iCal.Structs
{
#if !SILVERLIGHT
    [Serializable]
#endif
    public struct TimeZoneObservance
    {
        public IPeriod Period { get; set; }
        public ITimeZoneInfo TimeZoneInfo { get; set; }

        public TimeZoneObservance(IPeriod period, ITimeZoneInfo tzi) : this()
        {
            Period = period;
            TimeZoneInfo = tzi;
        }

        public bool Contains(IDateTime dt)
        {
            if (Period != null)
                return Period.Contains(dt);
            return false;
        }
    }
}
