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
            Assert.AreEqual(4, result.Count());
            Assert.AreEqual("value1", result.ElementAt(0));
            Assert.AreEqual("value2", result.ElementAt(1));
            Assert.AreEqual("value3", result.ElementAt(2));
        }

        [TestMethod]
        public void GetById()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();

            // Act
            string result = controller.Get(5);

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
        }

        [TestMethod]
        public void Put()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();

            // Act
            controller.Put(5, "value");

            // Assert
        }

        [TestMethod]
        public void Delete()
        {
            // Arrange
            EmployeeController controller = new EmployeeController();

            // Act
            controller.Delete(5);

            // Assert
        }
    }
}
