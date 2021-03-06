using System;
using System.IO;
using System.Text;
using IServiceProvider = KwasantICS.DDay.iCal.Interfaces.General.IServiceProvider;

namespace KwasantICS.DDay.iCal.Interfaces.Serialization
{    
    public interface ISerializer :
        IServiceProvider
    {
        ISerializationContext SerializationContext { get; set; }        

        Type TargetType { get; }        
        void Serialize(object obj, Stream stream, Encoding encoding);
        object Deserialize(Stream stream, Encoding encoding);
    }
}
