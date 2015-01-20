﻿using KwasantICS.DDay.iCal.Interfaces.General;

namespace KwasantICS.DDay.iCal.ExtensionMethods
{
    public static class CalendarObjectExtensions
    {
        static public void AddChild<TItem>(this ICalendarObject obj, TItem child) where TItem : ICalendarObject
        {
            obj.Children.Add(child);
        }

        static public void RemoveChild<TItem>(this ICalendarObject obj, TItem child) where TItem : ICalendarObject
        {
            obj.Children.Remove(child);
        }
    }
}
