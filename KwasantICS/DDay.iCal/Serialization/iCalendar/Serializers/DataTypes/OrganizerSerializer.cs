﻿using System;
using System.IO;
using KwasantICS.DDay.iCal.DataTypes;
using KwasantICS.DDay.iCal.Interfaces.DataTypes;
using KwasantICS.DDay.iCal.Serialization.iCalendar.Serializers.Other;

namespace KwasantICS.DDay.iCal.Serialization.iCalendar.Serializers.DataTypes
{
    public class OrganizerSerializer :
        StringSerializer
    {
        public override Type TargetType
        {
            get { return typeof(Organizer); }
        }

        public override string SerializeToString(object obj)
        {
            try
            {
                IOrganizer o = obj as IOrganizer;
                if (o != null && o.Value != null)
                    return Encode(o, Escape(o.Value.OriginalString));
                return null;
            }
            catch
            {
                return null;
            }
        }

        public override object Deserialize(TextReader tr)
        {
            string value = tr.ReadToEnd();

            IOrganizer o = null;
            try
            {
                o = CreateAndAssociate() as IOrganizer;
                if (o != null)
                {
                    string uriString = Unescape(Decode(o, value));

                    // Prepend "mailto:" if necessary
                    if (!uriString.StartsWith("mailto:", StringComparison.InvariantCultureIgnoreCase))
                        uriString = "mailto:" + uriString;
                    
                    o.Value = new Uri(uriString);
                }
            }
            catch { }

            return o;
        }
    }
}
