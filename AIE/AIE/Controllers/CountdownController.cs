using AIE.Content.Models;
using AIEService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Web.Http;

namespace AIE.Controllers
{
    public class CountdownController : ApiController
    {
        [BasicAuthentication]
        public HttpResponseMessage Get()
        {
            string username = Thread.CurrentPrincipal.Identity.Name;

            using (EntitiesAPI entities = new EntitiesAPI())
            {
                switch (username.ToLower())
                {
                    case "aie-user":
                        var objs = entities.APICountDowns.ToList();
                        var obj = objs.ToList();
                        return Request.CreateResponse(HttpStatusCode.OK, obj);

                    default:
                        return Request.CreateResponse(HttpStatusCode.BadRequest);
                }
            }
        }
    }
}