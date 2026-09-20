using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIE.Ar_Sa
{
    public partial class Publication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string embed = "<object data=\"{0}\" type=\"application/pdf\" width=\"100%\" height=\"500px\"></object>";
                //embedPdf1.Text = string.Format(embed, ResolveUrl("../Content/pdf/Publication_ar.pdf"));
                //string embed = "<object data=\"{0}\" type=\"application/pdf\" width=\"1200px\" height=\"1000px\"></object>";
                //embedPdf1.Text = string.Format(embed, ResolveUrl("../Content/pdf/Pub1.pdf"));
                //embedPdf2.Text = string.Format(embed, ResolveUrl("../Content/pdf/Pub2.pdf"));
                //embedPdf3.Text = string.Format(embed, ResolveUrl("../Content/pdf/Pub3.pdf"));
            }
        }
    }
}