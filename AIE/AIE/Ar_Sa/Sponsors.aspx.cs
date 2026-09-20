using DBFunction;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIE.Ar_Sa
{
    public partial class Sponsors : System.Web.UI.Page
    {
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    dv = Ado.SponsorsGet("2");
            //    if (dv.Count > 0)
            //    {
            //        Repeater1.DataSource = dv;
            //        Repeater1.DataBind();
            //    }
            //}

        }
    }
}