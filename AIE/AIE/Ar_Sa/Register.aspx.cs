using DBFunction;
using System;
using System.ComponentModel.DataAnnotations;
using System.Data;

namespace AIE.Ar_Sa
{
    public partial class Register : System.Web.UI.Page
    {
        DataView dv = new DataView();

        protected void Page_Load(object sender, EventArgs e)
        {
            divError.Visible = false;
            divError.Attributes["class"] = "error_input";
        }

        public bool IsValidEmailAddress(string email)
        {
            if (!string.IsNullOrEmpty(email) && new EmailAddressAttribute().IsValid(email))
                return true;
            else
                return false;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TxtFullName.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "Name is required";
                return;
            }
            if (TxtGender.SelectedIndex == -1)
            {
                divError.Visible = true;
                divError.InnerHtml = "Gender is required";
                return;
            }
            if (Nationality.SelectedIndex == -1)
            {
                divError.Visible = true;
                divError.InnerHtml = "Nationality is required";
                return;
            }

            if (!IsValidEmailAddress(TxtEmail.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "Email format not valid";
                return;
            }
            if (string.IsNullOrWhiteSpace(TxtPassword.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "Password is required";
                return;
            }
            if (TxtPassword.Text != TxtPasswordAgain.Text)
            {
                divError.Visible = true;
                divError.InnerHtml = "Password does not match";
                return;
            }
            dv = Ado.UsersGetByEmail(TxtEmail.Text);
            if (dv.Count > 0)
            {
                divError.Visible = true;
                divError.InnerHtml = "Username exist";
                return;
            }


            Ado.UsersInsertV2(TxtFullName.Text, TxtEmail.Text, TxtPassword.Text, TxtMobile.Text, TxtGender.SelectedItem.Value.ToString(), Nationality.Value.ToString(), TxtLinkedin.Text);
            divError.Visible = true;
            divError.Attributes["class"] = "alert alert-success";
            divError.InnerHtml = "Successfully Registered";

            TxtFullName.Text = "";
            TxtMobile.Text = "";
            TxtEmail.Text = "";
            Nationality.SelectedIndex = -1;
            TxtGender.SelectedIndex = -1;
        }
    }
}