using System;
using System.Diagnostics;
using System.IO;
using Data.DDay.DDay.iCal.Interfaces.DataTypes;
using Data.DDay.DDay.iCal.Interfaces.General;
using Data.DDay.DDay.iCal.Serialization.iCalendar.Serializers.DataTypes;
using Data.Models;

namespace Data.DDay.DDay.iCal.DataTypes
{
    /// <summary>
    /// A class that represents the geographical location of an
    /// <see cref="Event"/> or <see cref="Data.DDay.DDay.iCal.Components.Todo"/> item.
    /// </summary>
    [DebuggerDisplay("{Latitude};{Longitude}")]
#if !SILVERLIGHT
    [Serializable]
#endif
    public class GeographicLocation :
        EncodableDataType,
        IGeographicLocation
    {
        #region Private Fields

        private double m_Latitude;
        private double m_Longitude;

        #endregion

        #region Public Properties

        public double Latitude
        {
            get { return m_Latitude; }
            set { m_Latitude = value; }
        }

        public double Longitude
        {
            get { return m_Longitude; }
            set { m_Longitude = value; }
        }

        #endregion

        #region Constructors

        public GeographicLocation() { }
        public GeographicLocation(string value)
            : this()
        {
            GeographicLocationSerializer serializer = new GeographicLocationSerializer();
            CopyFrom(serializer.Deserialize(new StringReader(value)) as ICopyable);
        }
        public GeographicLocation(double latitude, double longitude)
        {
            Latitude = latitude;
            Longitude = longitude;
        }

        #endregion

        #region Overrides

        public override bool Equals(object obj)
        {
            if (obj is IGeographicLocation)
            {
                IGeographicLocation g = (IGeographicLocation)obj;
                return g.Latitude.Equals(Latitude) && g.Longitude.Equals(Longitude);
            }
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return Latitude.GetHashCode() ^ Longitude.GetHashCode();
        }

        public override void CopyFrom(ICopyable obj)
        {
            base.CopyFrom(obj);
            if (obj is IGeographicLocation)
            {
                IGeographicLocation g = (IGeographicLocation)obj;
                Latitude = g.Latitude;
                Longitude = g.Longitude;
            }            
        }

        public override string ToString()
        {
            return Latitude.ToString("0.000000") + ";" + Longitude.ToString("0.000000");
        }

        #endregion
    }
}
