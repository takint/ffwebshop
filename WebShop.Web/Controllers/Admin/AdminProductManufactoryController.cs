﻿using System.IO;
using System.Threading.Tasks;
using System.Web.Mvc;
using WebShop.Application;
using WebShop.Web.Models;

namespace WebShop.Web.Controllers
{
    public class AdminProductManufactoryController : AdminControllerBase
    {
        private readonly IProductManufactoryAppService _manufactoryAppService;

        public AdminProductManufactoryController(IProductManufactoryAppService manufactoryAppService)
        {
            _manufactoryAppService = manufactoryAppService;
        }

        [HttpGet]
        public ActionResult Index()
        {
            return RedirectToAction("List");
        }

        [HttpGet]
        public async Task<ActionResult> List()
        {
            ProductManufactoryViewModel viewModel = new ProductManufactoryViewModel(_manufactoryAppService);
            await viewModel.FillDataForModel();

            return View(viewModel);
        }

        [HttpGet]
        public async Task<ActionResult> Details(int id)
        {
            ProductManufactoryViewModel viewModel = new ProductManufactoryViewModel(_manufactoryAppService);
            await viewModel.GetProductManufactory(id);
            return View(viewModel);
        }

        [HttpGet]
        public ActionResult Create()
        {
            ProductManufactoryViewModel viewModel = new ProductManufactoryViewModel(_manufactoryAppService);
            return View(viewModel);
        }

        [HttpGet]
        public async Task<ActionResult> Update(int id)
        {
            ProductManufactoryViewModel viewModel = new ProductManufactoryViewModel(_manufactoryAppService);
            await viewModel.GetProductManufactory(id);
            return View(viewModel);
        }

        [HttpGet]
        public async Task<ActionResult> Delete(int id)
        {
            ProductManufactoryViewModel viewModel = new ProductManufactoryViewModel(_manufactoryAppService);
            await viewModel.GetProductManufactory(id);
            return View(viewModel);
        }
        private string SaveFile()
        {
            var uri = "";
            if (Request.Files.Count > 0 && !string.IsNullOrEmpty(Request.Files[0].FileName))
            {
                var file = Request.Files[0];
                var path = Path.Combine(Server.MapPath("~/Content/Files/"), file.FileName);
                var data = new byte[file.ContentLength];
                file.InputStream.Read(data, 0, file.ContentLength);
                using (var sw = new FileStream(path, FileMode.Create))
                {
                    sw.Write(data, 0, data.Length);
                }
                uri = "/Content/Files/" + file.FileName;
            }
            return uri;
        }
        [HttpPost]
        public async Task<ActionResult> Create(ProductManufactoryViewModel viewModel)
        {
            viewModel.ProductManufactory.ManufactoryLogo = SaveFile();
            CreateProductManufactoryRq rq = new CreateProductManufactoryRq()
            {
                Manufactory = viewModel.ProductManufactory,

            };            
            viewModel.ProductManufactory = (await _manufactoryAppService.CreateManufactory(rq)).Manufactory;
            return RedirectToAction("List", new { id = viewModel.ProductManufactory.Id });
        }

        [HttpPost]
        public async Task<ActionResult> Update(ProductManufactoryViewModel viewModel)
        {
            var uri = SaveFile();
            if (!string.IsNullOrEmpty(uri))
            {
                viewModel.ProductManufactory.ManufactoryLogo = uri;
            }

            UpdateProductManufactoryRq rq = new UpdateProductManufactoryRq()
            {
                Manufactory = viewModel.ProductManufactory
            };
            viewModel.ProductManufactory = (await _manufactoryAppService.UpdateManufactory(rq)).Manufactory;
            return RedirectToAction("List", new { id = viewModel.ProductManufactory.Id });
        }

        [HttpPost]
        public async Task<ActionResult> Delete(ProductManufactoryViewModel viewModel)
        {
            DeleteProductManufactoryRq rq = new DeleteProductManufactoryRq()
            { Manufactory = viewModel.ProductManufactory };
            viewModel.ProductManufactory = (await _manufactoryAppService.DeleteManufactory(rq)).Manufactory;
            return RedirectToAction("List", new { id = viewModel.ProductManufactory.Id });
        }
    }
}