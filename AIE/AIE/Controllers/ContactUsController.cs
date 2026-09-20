using AIE.Content.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AIE.Controllers
{
    public class ContactUsController : ApiController
    {
        public IHttpActionResult Get(int id)
        {
            using (EntitiesAPI entities = new EntitiesAPI())
            {

                var obj = entities.qryApiContactUs.FirstOrDefault(e => e.ContactUsId == id)?.ContactUsId;

                if (obj == null)
                {
                    return Ok(new
                    {
                        //400
                        statusCode = HttpStatusCode.BadRequest
                    });
                }

                return Ok(new
                {
                    //200
                    statusCode = HttpStatusCode.OK
                });

            }



        }


        public IEnumerable<qryApiContactU> Get()
        {
            using (EntitiesAPI entities = new EntitiesAPI())
            {
                return entities.qryApiContactUs.ToList();
            }
        }
    }
}
