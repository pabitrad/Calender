using System;
using System.IO;
using KwasantICS.DDay.iCal.Interfaces.DataTypes;
using KwasantICS.DDay.iCal.Interfaces.General;
using KwasantICS.DDay.iCal.Serialization.iCalendar.Serializers.DataTypes;

namespace KwasantICS.DDay.iCal.DataTypes
{    
    /// <summary>
    /// An iCalendar status code.
    /// </summary>
#if !SILVERLIGHT
    [Serializable]
#endif
    public class StatusCode : 
        EncodableDataType,
        IStatusCode
    {
        #region Private Fields

        private int[] m_Parts;

        #endregion

        #region Public Properties

        public int[] Parts
        {
            get { return m_Parts; }
            set { m_Parts = value; }
        }

        public int Primary
        {
            get
            {
                if (m_Parts.Length > 0)
                    return m_Parts[0];
                return 0;
            }
        }

        public int Secondary
        {
            get
            {
                if (m_Parts.Length > 1)
                    return m_Parts[1];
                return 0;
            }
        }

        public int Tertiary
        {
            get
            {
                if (m_Parts.Length > 2)
                    return m_Parts[2];
                return 0;
            }
        }

        #endregion

        #region Constructors

        public StatusCode() { }
        public StatusCode(string value)
            : this()
        {
            StatusCodeSerializer serializer = new StatusCodeSerializer();
            CopyFrom(serializer.Deserialize(new StringReader(value)) as ICopyable);
        }

        #endregion

        #region Overrides

        public override void CopyFrom(ICopyable obj)
        {
            base.CopyFrom(obj);
            if (obj is IStatusCode)
            {
                IStatusCode sc = (IStatusCode)obj;
                Parts = new int[sc.Parts.Length];
                sc.Parts.CopyTo(Parts, 0);
            }
        }

        public override string ToString()
        {
            StatusCodeSerializer serializer = new StatusCodeSerializer();
            return serializer.SerializeToString(this);
        }

        public override bool Equals(object obj)
        {
            IStatusCode sc = obj as IStatusCode;
            if (sc != null)
            {
                if (m_Parts != null &&
                    sc.Parts != null &&
                    m_Parts.Length == sc.Parts.Length)
                {
                    for (int i = 0; i < m_Parts.Length; i++)
                    {
                        if (!object.Equals(m_Parts[i], sc.Parts[i]))
                            return false;
                    }
                    return true;
                }
                return false;
            }

            return base.Equals(obj);
        }

        #endregion
    }
}
