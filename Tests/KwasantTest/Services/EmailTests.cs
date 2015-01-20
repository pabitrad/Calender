﻿using System;
using Data.Entities;
using Data.Interfaces;
using Data.Repositories;
using FluentValidation;
using KwasantCore.Managers.APIManager.Packagers;
using KwasantCore.Services;
using KwasantCore.StructureMap;
using KwasantTest.Fixtures;
using Moq;
using NUnit.Framework;
using StructureMap;
using Utilities;

namespace KwasantTest.Services
{
    [TestFixture]
    public class EmailTests
    {
        private IUnitOfWork _uow;
        private BookingRequestRepository _bookingRequestRepo;
        private FixtureData _fixture;
        private EventDO _curEventDO;

        [SetUp]
        public void Setup()
        {
            StructureMapBootStrapper.ConfigureDependencies(StructureMapBootStrapper.DependencyType.TEST);
            _uow = ObjectFactory.GetInstance<IUnitOfWork>();

            //_bookingRequestRepo = new BookingRequestRepository(_uow);
            _fixture = new FixtureData();
            _curEventDO = new EventDO();
        }

       

        [Test]
        [Category("Email")]
        public void CanCreateStandardInviteEmail()
        {
            //SETUP  
            _curEventDO = _fixture.TestEvent2();
            string expectedSubject = "Invitation via Kwasant: " + _curEventDO.Summary + "@ " + _curEventDO.StartDate;
           
            
            //EXECUTE
            var curEmail = new Email(_uow, _curEventDO);
            curEmail.CreateStandardInviteEmail(_curEventDO);
            //VERIFY
            //Assert.AreEqual(_curEmailDO.Subject,  expectedSubject);

        }

        [Test]
        [Category("Email")]
        public void CreateSIE_FailsIfInvalidEventInput()
        {
            //SETUP
            string expectedSubject = "Invitation via Kwasant: " + _curEventDO.Summary + "@ " + _curEventDO.StartDate;
            
            Assert.Throws<ValidationException>(() =>
            {

                new Email(_uow, _curEventDO);

            });
            //EXECUTE

            //VERIFY


        }

        [Test, Ignore]
        [Category("Email")]
        public void CanSendSIE_MANUALTEST()
        {
            //SETUP  
            _curEventDO = _fixture.TestEvent2();
            string expectedSubject = "Invitation via Kwasant: " + _curEventDO.Summary + "@ " + _curEventDO.StartDate;


            //EXECUTE
            var email = new Email(_uow, _curEventDO);
            email.Send();

            //VERIFY
            //implement a technique later to go and pull from the email inbox and verify. for now, verify by hand.

        }

        [Test]
        [Category("Email")]
        public void CanConstructEmailWithEmailDO()
        {
            //SETUP  
            EmailDO _curEmailDO = _fixture.TestEmail1();
            
            //EXECUTE
            Email curEmail = new Email(_uow, _curEmailDO);

            var mockEmailer = new Mock<IEmailPackager>();
            mockEmailer.Setup(a => a.Send(_curEmailDO)).Verifiable();
            ObjectFactory.Initialize(a => a.For<IEmailPackager>().Use(mockEmailer.Object));
            //VERIFY
            curEmail.Send();

            mockEmailer.Verify();

        }
   
       
    }
}
