﻿using Data.Entities;
using Data.Interfaces;

namespace Data.Repositories
{
    public class TrackingStatusRepository : GenericRepository<TrackingStatusDO>, ITrackingStatusRepository
    {
        internal TrackingStatusRepository(IDBContext dbContext)
            : base(dbContext)
        {

        }

        public void Update()
        {
        }
    }

    public interface ITrackingStatusRepository : IGenericRepository<TrackingStatusDO>
    {

    }
}