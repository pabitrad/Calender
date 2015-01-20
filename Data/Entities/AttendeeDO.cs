﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Data.Interfaces;

namespace Data.Entities
{
    public class AttendeeDO : IAttendee
    {
        [Key]
        public int Id { get; set; }
        public String Name { get; set; }
        public String EmailAddress { get; set; }

        [ForeignKey("Event")]
        public int EventID { get; set; }
        public virtual EventDO Event { get; set; }
    }
}
