using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using EmployeeServiceApi;
using EmployeeServiceApi.Controllers;

namespace EmployeeServiceApi.Tests.Controllers
{
    [TestClass]
    public class EmployeeControllerTest
    {
        [TestMethod]
        public void Get()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();
            
            // Act
            IEnumerable<string> result = controller.Get();

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(result.Count(), EmployeeController.Values.Count());
        }

        [TestMethod]
        public void GetById()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();

            // Act
            string result = controller.Get(0);

            // Assert
            Assert.AreEqual("value1", result);
        }

        [TestMethod]
        public void Post()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();

            // Act
            controller.Post("value");

            // Assert
            Assert.AreEqual(EmployeeController.Values[EmployeeController.Values.Count() - 1], "value");
        }

        [TestMethod]
        public void Put()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();

            // Act
            controller.Put(0, "new value");

            // Assert
            Assert.AreEqual(EmployeeController.Values[0], "new value");
        }

        [TestMethod]
        public void Delete()
        {
            //Arrange
            EmployeeController controller = new EmployeeController();

            //Act
            controller.Delete(0);

            //Assert
            Assert.AreNotEqual("value1", EmployeeController.Values[0]);
        }
    }
}

