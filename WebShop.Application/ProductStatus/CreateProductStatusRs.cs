﻿using Abp.Application.Services.Dto;
using System.Collections.Generic;

namespace WebShop.Application
{
    public class CreateProductStatusRs : BaseResponse<ProductStatusDTO>
    {
        public ProductStatusDTO Status { get; set; }
    }
}
