﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using Configuration;
using Daemons;
using Data.Entities;
using Data.Entities.Enumerations;
using Data.Interfaces;
using Data.Repositories;
using KwasantWeb;
using Microsoft.Ajax.Utilities;
using Microsoft.Owin;
using Microsoft.WindowsAzure;
using Owin;
using StructureMap;
using Utilities.Logging;

[assembly: OwinStartup(typeof(KwasantWeb.Startup))]

namespace KwasantWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureDaemons();
            ConfigureAuth(app);
            ConfigureCommunicationConfigs();
        }


        //SeedDatabases
        //Ensure that critical configuration information is present in the database
        //Twilio SMS messages are based on CommunicationConfigurations
        //Database should have a CommunicationConfiguration that sends an SMS to 14158067915
        //Load Repository and query for CommunicationConfigurations. If null, create one set to 14158067915
        //If not null, make sure that at least one exists where the ToAddress is 14158067915
        public void ConfigureCommunicationConfigs()
        {
            IUnitOfWork uow = ObjectFactory.GetInstance<IUnitOfWork>();
            CommunicationConfigurationRepository communicationConfigurationRepo = uow.CommunicationConfigurationRepository;
            List<CommunicationConfigurationDO> curConfigureCommunicationConfigs = communicationConfigurationRepo.GetAll().ToList();



            if (curConfigureCommunicationConfigs.Find(config => config.ToAddress == CloudConfigurationManager.GetSetting("MainSMSAlertNumber")) == null)
                // it is not true that there is at least one commConfig that has the Main alert number
                {
                    CommunicationConfigurationDO curCommConfig = new CommunicationConfigurationDO();
                    curCommConfig.Type = CommunicationType.SMS;
                    curCommConfig.ToAddress = CloudConfigurationManager.GetSetting("MainSMSAlertNumber");
                        communicationConfigurationRepo.Add(curCommConfig);
                        uow.SaveChanges();
                }
           
            }

        public void AddMainSMSAlertToDb(CommunicationConfigurationRepository communicationConfigurationRepo)
        {
           
        }


        private static void ConfigureDaemons()
        {
            DaemonSettings daemonConfig = ConfigurationManager.GetSection("daemonSettings") as DaemonSettings;
            if (daemonConfig != null)
            {
                if (daemonConfig.Enabled)
                {
                    foreach (DaemonConfig daemon in daemonConfig.Daemons)
                    {
                        try
                        {
                            if (daemon.Enabled)
                            {
                                Type type = Type.GetType(daemon.InitClass, true);
                                Daemon obj = Activator.CreateInstance(type) as Daemon;
                                if (obj == null)
                                    throw new ArgumentException(
                                        string.Format(
                                            "A daemon must implement IDaemon. Type '{0}' does not implement the interface.",
                                            type.Name));
                                obj.Start();
                            }
                        }
                        catch (Exception e)
                        {
                            Logger.GetLogger().Error("Error initializing daemon '" + daemon.Name + "'.", e);
                        }
                    }
                }
            }
        }
    }
}
