﻿using System.Collections.Generic;
using Abp.Domain.Repositories;
using System.Threading.Tasks;

namespace WebShop.Core
{
    public interface IProductMetaRepository : IRepository<ProductMeta, int>
    {
        // Declare custom action with database
        Task<ProductMeta> GetMetaByKeyAsync(string MetaKey);
    }
}
