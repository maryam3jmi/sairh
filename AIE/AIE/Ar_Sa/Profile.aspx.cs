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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Ado.UserDetails == null)
                {
                    Response.Redirect("~/");
                }
                else
                {
                    DataView dv = new DataView();
                    dv = Ado.UsersGetByID(Ado.UserDetails.UserID.ToString());
                    if (dv.Count > 0)
                    {
                        LblId.Text = dv[0]["UserID"].ToString();
                        LblName.Text = dv[0]["FullName"].ToString();
                        TxtEmail.Text = dv[0]["Username"].ToString();
                        TxtMobile.Text = dv[0]["MobileNo"].ToString();

                        TxtEditMobile.Text = dv[0]["MobileNo"].ToString();
                        TxtGender.SelectedValue = dv[0]["Gender"].ToString();
                        Nationality.Value = dv[0]["Nationality"].ToString();
                        TxtLinkedin.Text = dv[0]["Linkedn"].ToString();
                    }
                }


            }
            divError.Visible = false;
            divError.Attributes["class"] = "error_input text-dark";

            divErrorProfile.Visible = false;
            divError.Attributes["class"] = "error_input text-dark";
        }

        protected void BtnShowChangePass_Click(object sender, EventArgs e)
        {
            if (div_changepasss.Visible == false)
            {
                div_changepasss.Visible = true;
                div_editprofile.Visible = false;
            }
            else
            {
                div_changepasss.Visible = false;
                div_editprofile.Visible = false;
            }
        }

        protected void BtnShowSurvey_Click(object sender, EventArgs e)
        {

        }

        protected void BtnShowProfile_Click(object sender, EventArgs e)
        {
            if (div_editprofile.Visible == Visible)
            {
                div_changepasss.Visible = false;
                div_editprofile.Visible = true;
            }
            else
            {
                div_changepasss.Visible = false;
                div_editprofile.Visible = true;
            }
        }
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TxtPass.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "New Password is required";
                return;
            }
            if (TxtPass.Text != TxtPassRe.Text)
            {
                divError.Visible = true;
                divError.InnerHtml = "Password does not match";
                return;
            }

            Ado.UsersUpdatePass(LblId.Text, TxtPass.Text);
            divError.Visible = true;
            divError.Attributes["class"] = "alert alert-success";
            divError.InnerHtml = "Successfully Updated";

            TxtPass.Text = "";
            TxtPassRe.Text = "";
        }

        protected void BtnPudateProfile_Click(object sender, EventArgs e)
        {
            Ado.UsersUpdateInfo(LblId.Text, TxtEditMobile.Text, TxtGender.SelectedItem.Value.ToString(), Nationality.Value.ToString(), TxtLinkedin.Text);
            divErrorProfile.Visible = true;
            divErrorProfile.Attributes["class"] = "alert alert-success";
            divErrorProfile.InnerHtml = "Successfully Updated";

        }
    }
}