﻿using Abp.Application.Services.Dto;

namespace WebShop.Application
{
    public class DeleteCustomerOrderRq : BaseRequest
    {
        public CustomerOrderDTO Order { get; set; }
    }
}
