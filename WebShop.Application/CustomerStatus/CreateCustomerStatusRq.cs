﻿using Abp.Application.Services.Dto;

namespace WebShop.Application
{
    public class CreateCustomerStatusRq : BaseRequest
    {
        public CustomerStatusDTO Status { get; set; }
    }
}