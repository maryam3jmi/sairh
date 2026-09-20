using DBFunction;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIE
{
    public partial class Public : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                if(Ado.UserDetails!=null)
                {
                    liLogin.Visible = false;
                    liLogOut.Visible = true;
                    liProfile.Visible = true;
                    if (Ado.UserDetails.UserLevel == "Admin")
                    {
                        liDashboard.Visible = true;
                    }
                    else
                    {
                        liDashboard.Visible = false;
                    }
                }
                else
                {
                    liLogin.Visible = true;
                    liLogOut.Visible = false;
                    liDashboard.Visible = false;
                    liProfile.Visible = false;
                }

                // New logic for setting the active class
                string currentPage = Request.Url.AbsolutePath.ToLower();

                if (currentPage.Contains("publication"))
                    linkPublication.Attributes["class"] += " active";
                else if (currentPage.Contains("schedules"))
                    linkSchedules.Attributes["class"] += " active";
                else if (currentPage.Contains("ceremony"))
                    linkCeremony.Attributes["class"] += " active";
                else if (currentPage.Contains("judges"))
                    linkJudges.Attributes["class"] += " active";
                else if (currentPage.Contains("sponsors"))
                    linkSponsors.Attributes["class"] += " active";
                else if (currentPage.Contains("contactus"))
                    linkContactUs.Attributes["class"] += " active";
                else
                    linkHome.Attributes["class"] += " active";

            }
        }

        private void GetAbsolutePath()
        {
            string absolutepath = HttpContext.Current.Request.Url.AbsolutePath;
            Page.Header.Title = "";

            if (absolutepath.Contains("default"))
            {

                Response.Redirect("~/Ar_Sa/");
            }
            else if (absolutepath.Contains("Sponsors"))
            {
                Response.Redirect("~/Ar_Sa/Sponsors");
            }

            else if (absolutepath.Contains("Judges"))
            {
                Response.Redirect("~/Ar_Sa/Judges");
            }

            else if (absolutepath.Contains("Winners"))
            {
                Response.Redirect("~/Ar_Sa/Winners");
            }
            else if (absolutepath.Contains("Schedules"))
            {
                Response.Redirect("~/Ar_Sa/Schedules");
            }
            else if (absolutepath.Contains("ContactUs"))
            {
                Response.Redirect("~/Ar_Sa/ContactUs");
            }
            else if (absolutepath.Contains("Login"))
            {
                Response.Redirect("~/Ar_Sa/Login");
            }
            else if (absolutepath.Contains("Register"))
            {
                Response.Redirect("~/Ar_Sa/Register");
            }
            else if (absolutepath.Contains("Ceremony"))
            {
                Response.Redirect("~/Ar_Sa/Ceremony");
            }
            else if (absolutepath.Contains("Publication"))
            {
                Response.Redirect("~/Ar_Sa/Publication");
            }
            else if (absolutepath.Contains("Profile"))
            {
                Response.Redirect("~/Ar_Sa/Profile");
            }
            else if (absolutepath.Contains("Dashboard"))
            {
                Response.Redirect("~/Ar_Sa/Dashboard");
            }
        }

        protected void BtnToAr_Click(object sender, EventArgs e)
        {
            GetAbsolutePath();
        }

        protected void BtnSignOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("~/");
        }

        protected void BtnProfile_Click(object sender, EventArgs e)
        {

        }
    }
}