﻿using System.Collections.Generic;
using KwasantICS.DDay.iCal.Interfaces.DataTypes;
using KwasantICS.DDay.iCal.Interfaces.Evaluation;
using KwasantICS.DDay.iCal.Structs;

namespace KwasantICS.DDay.iCal.Interfaces.Components
{
    public interface ITimeZoneInfo :
        ICalendarComponent,
        IRecurrable
    {
        string TZID { get; }
        string TimeZoneName { get; set; }
        IList<string> TimeZoneNames { get; set; }
        IUTCOffset OffsetFrom { get; set; }
        IUTCOffset OffsetTo { get; set; }

        /// <summary>
        /// Returns the observance that corresponds to
        /// the date/time provided, or null if no matching
        /// observance could be found within this TimeZoneInfo.
        /// </summary>
        TimeZoneObservance? GetObservance(IDateTime dt);

        /// <summary>
        /// Returns true if this time zone info represents
        /// the observed time zone for the IDateTime value
        /// provided.
        /// </summary>
        bool Contains(IDateTime dt);
    }
}
