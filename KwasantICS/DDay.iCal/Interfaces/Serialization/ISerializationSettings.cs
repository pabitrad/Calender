﻿using System;

namespace KwasantICS.DDay.iCal.Interfaces.Serialization
{
    public interface ISerializationSettings
    {
        Type iCalendarType { get; set; }
        bool EnsureAccurateLineNumbers { get; set; }
        ParsingModeType ParsingMode { get; set; }
        bool StoreExtraSerializationData { get; set; }
    }

    public enum ParsingModeType
    {
        Strict,
        Loose
    }
}
