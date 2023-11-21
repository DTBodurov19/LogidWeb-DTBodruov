using Logid_Web.Controllers;
using Logid_Web.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;

namespace UnitTest
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            IConfiguration configuration = new ConfigurationManager();
            CustomerModel model = new CustomerModel();
            model.Name = "John";
            model.ZIP = "53453";
            model.Phone = "123454235";
            model.Address = "John123";
            HomeController home = new HomeController(configuration);

            var result = home.Create(model) as RedirectToActionResult;
            Assert.AreEqual("Index", result.ActionName);
            Assert.AreEqual("Home", result.ControllerName);

            var actionResult = home.Customers();
            Assert.IsInstanceOf<ViewResult>(actionResult);

            var viewResult = actionResult;
            
        }
    }
}