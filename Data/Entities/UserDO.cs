﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Collections.Generic;

using Data.Interfaces;

namespace Data.Entities
{
    public class UserDO : IdentityUser, IUser
    {
        /// <summary>
        /// This property may not be required a base class has property called PasswordHash 
        /// where password is stored in encrypted form and decrypted when it is fetched.
        /// </summary>
        [NotMapped]
        public string Password
        {
            get { return base.PasswordHash; }
            set { base.PasswordHash = value; }
        }

        public virtual IEnumerable<BookingRequestDO> BookingRequests { get; set; }

        public String FirstName { get; set; }
        public String LastName { get; set; }

        [ForeignKey("EmailAddress")]
        public int EmailAddressID { get; set; }

        [Required]
        public virtual EmailAddressDO EmailAddress { get; set; }
    }
}

