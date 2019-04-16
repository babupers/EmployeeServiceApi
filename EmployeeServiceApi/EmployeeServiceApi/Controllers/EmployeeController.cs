using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EmployeeServiceApi.Controllers
{
    public class EmployeeController : ApiController
    {
        static List<string> values = new List<string>() { "value1", "value2" };
        public static List<string> Values
        {
            get
            {
                return values;
            }
            
        }
        // GET api/values
        public IEnumerable<string> Get()
        {
            return Values;
        }

        // GET api/values/5
        public string Get(int id)
        {
            return Values[id];
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
            Values.Add(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
            if (Values.Count > id)
            {
                values[id] = value;
            }

        }

        // DELETE api/values/5
        public void Delete(int id)
        {
            Values.RemoveAt(id);
        }
    }
}
