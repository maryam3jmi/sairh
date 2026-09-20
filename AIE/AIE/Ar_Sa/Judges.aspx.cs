using System;
using System.Web.UI.WebControls;

namespace AIE.Ar_Sa
{
    public partial class Judges : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCloseInfo_Click(object sender, EventArgs e)
        {
            //modal_info.Hide();
        }

        protected void BtnReadMoreOut_Click(object sender, EventArgs e)
        {
            //string[] cmdArguments = (sender as LinkButton).CommandArgument.ToString().Split(new char[] { ',' });
            //imgInfo.Src = cmdArguments[0].ToString();
            //HlPdfPath.NavigateUrl = cmdArguments[1].ToString();
            //modal_info.Show();
        }
    }
}