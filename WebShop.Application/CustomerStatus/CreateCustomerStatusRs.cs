﻿using Abp.Application.Services.Dto;
using System.Collections.Generic;

namespace WebShop.Application
{
    public class CreateCustomerStatusRs : BaseResponse<CustomerStatusDTO>
    {
        public CustomerStatusDTO Status { get; set; }
    }
}
