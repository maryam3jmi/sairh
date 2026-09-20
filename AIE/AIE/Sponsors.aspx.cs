using DBFunction;
using System;
using System.Data;

namespace AIE
{
    public partial class Sponsors : System.Web.UI.Page
    {
        DataView dv = new DataView();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{
            //    dv = Ado.SponsorsGet("1");
            //    if(dv.Count>0)
            //    {
            //        Repeater1.DataSource = dv;
            //        Repeater1.DataBind();
            //    }
            //}
            

        }
    }
}