using System;
using System.Diagnostics;
using System.IO;
using Data.DDay.DDay.iCal.Interfaces.DataTypes;
using Data.DDay.DDay.iCal.Interfaces.General;
using Data.DDay.DDay.iCal.Serialization.iCalendar.Serializers.DataTypes;

namespace Data.DDay.DDay.iCal.DataTypes
{
    /// <summary>
    /// A class that represents the organizer of an event/todo/journal.
    /// </summary>
    [DebuggerDisplay("{Value}")]
#if !SILVERLIGHT
    [Serializable]
#endif
    public class Organizer :
        EncodableDataType,
        IOrganizer
    {
        #region IOrganizer Members

        virtual public Uri SentBy
        {
            get { return new Uri(Parameters.Get("SENT-BY")); }
            set
            {
                if (value != null)
                    Parameters.Set("SENT-BY", value.OriginalString);
                else
                    Parameters.Set("SENT-BY", (string)null);
            }
        }

        virtual public string CommonName
        {
            get { return Parameters.Get("CN"); }
            set { Parameters.Set("CN", value); }
        }

        virtual public Uri DirectoryEntry
        {
            get { return new Uri(Parameters.Get("DIR")); }
            set
            {
                if (value != null)
                    Parameters.Set("DIR", value.OriginalString);
                else
                    Parameters.Set("DIR", (string)null);
            }
        }

        virtual public Uri Value { get; set; }

        #endregion

        #region Constructors

        public Organizer() : base() { }
        public Organizer(string value)
            : this()
        {
            OrganizerSerializer serializer = new OrganizerSerializer();
            CopyFrom(serializer.Deserialize(new StringReader(value)) as ICopyable);
        }

        #endregion

        #region Overrides
        
        public override bool Equals(object obj)
        {
            IOrganizer o = obj as IOrganizer;
            if (o != null)
                return object.Equals(Value, o.Value);
            return base.Equals(obj);
        }

        public override void CopyFrom(ICopyable obj)
        {
            base.CopyFrom(obj);

            IOrganizer o = obj as IOrganizer;
            if (o != null)
            {
                Value = o.Value;
            }
        }

        #endregion
    }
}
