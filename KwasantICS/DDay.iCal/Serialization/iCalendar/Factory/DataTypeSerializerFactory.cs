﻿using System;
using KwasantICS.DDay.iCal.Interfaces.DataTypes;
using KwasantICS.DDay.iCal.Interfaces.Serialization;
using KwasantICS.DDay.iCal.Interfaces.Serialization.Factory;
using KwasantICS.DDay.iCal.Serialization.iCalendar.Serializers.DataTypes;
using KwasantICS.DDay.iCal.Serialization.iCalendar.Serializers.Other;

namespace KwasantICS.DDay.iCal.Serialization.iCalendar.Factory
{
    public class DataTypeSerializerFactory :
        ISerializerFactory
    {
        #region ISerializerFactory Members

        /// <summary>
        /// Returns a serializer that can be used to serialize and object
        /// of type <paramref name="objectType"/>.
        /// <note>
        ///     TODO: Add support for caching.
        /// </note>
        /// </summary>
        /// <param name="objectType">The type of object to be serialized.</param>
        /// <param name="ctx">The serialization context.</param>
        virtual public ISerializer Build(Type objectType, ISerializationContext ctx)
        {
            if (objectType != null)
            {
                ISerializer s = null;

                if (typeof(IAttachment).IsAssignableFrom(objectType))
                    s = new AttachmentSerializer();
                else if (typeof(IAttendee).IsAssignableFrom(objectType))
                    s = new AttendeeSerializer();
                else if (typeof(IDateTime).IsAssignableFrom(objectType))
                    s = new DateTimeSerializer();
                else if (typeof(IFreeBusyEntry).IsAssignableFrom(objectType))
                    s = new FreeBusyEntrySerializer();
                else if (typeof(IGeographicLocation).IsAssignableFrom(objectType))
                    s = new GeographicLocationSerializer();
                else if (typeof(IOrganizer).IsAssignableFrom(objectType))
                    s = new OrganizerSerializer();
                else if (typeof(IPeriod).IsAssignableFrom(objectType))
                    s = new PeriodSerializer();
                else if (typeof(IPeriodList).IsAssignableFrom(objectType))
                    s = new PeriodListSerializer();
                else if (typeof(IRecurrencePattern).IsAssignableFrom(objectType))
                    s = new RecurrencePatternSerializer();
                else if (typeof(IRequestStatus).IsAssignableFrom(objectType))
                    s = new RequestStatusSerializer();
                else if (typeof(IStatusCode).IsAssignableFrom(objectType))
                    s = new StatusCodeSerializer();
                else if (typeof(ITrigger).IsAssignableFrom(objectType))
                    s = new TriggerSerializer();
                else if (typeof(IUTCOffset).IsAssignableFrom(objectType))
                    s = new UTCOffsetSerializer();
                else if (typeof(IWeekDay).IsAssignableFrom(objectType))
                    s = new WeekDaySerializer();
                // Default to a string serializer, which simply calls
                // ToString() on the value to serialize it.
                else
                    s = new StringSerializer();
                
                // Set the serialization context
                if (s != null)
                    s.SerializationContext = ctx;

                return s;
            }
            return null;
        }

        #endregion
    }
}
