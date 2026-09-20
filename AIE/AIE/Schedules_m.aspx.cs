using DevExpress.Web;
using System;
using System.Web.UI.WebControls;

namespace AIE
{
    public partial class Schedules_m : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnViewVideo_Click(object sender, EventArgs e)
        {
            string[] cmdArguments = (sender as LinkButton).CommandArgument.ToString().Split(new char[] { ',' });


            if (cmdArguments[0].ToString() != "")
            {
                Uri uri = new Uri(cmdArguments[0].ToString());
                string path = uri.AbsolutePath;

                // Check if the URL is in the format "https://youtu.be/VIDEO_ID"
                if (uri.Host == "youtu.be" && !string.IsNullOrEmpty(path))
                {
                    path = path.TrimStart('/');
                }

                // Check if the URL is in the format "https://www.youtube.com/watch?v=VIDEO_ID"
                else if (uri.Host == "www.youtube.com" && uri.AbsolutePath == "/watch" && uri.Query.Contains("v="))
                {
                    var queryParameters = System.Web.HttpUtility.ParseQueryString(uri.Query);
                    path = queryParameters["v"];
                }


                string videoId = path;

                string URL = "https://www.youtube.com/embed/" + videoId;
                viewVideo.Attributes.Add("src", URL);
                if (cmdArguments[1].ToString() != "")
                {
                    divPDF.Visible = true;
                    HyperLink1.NavigateUrl = cmdArguments[1].ToString();
                }
                else
                {
                    divPDF.Visible = false;
                }

                details1.Attributes.Add("style", "background-size: cover; display: block;");
                details2.Attributes.Add("style", "background-size: cover; display: block;");
                details3.Attributes.Add("style", "background-size: cover; display: block;");
                modal_video.Show();
            }


        }

        protected void BtnCloseVideo_Click(object sender, EventArgs e)
        {

            modal_video.Hide();
        }
    }
}