using DBFunction;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIE
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divError.Visible = false;
            divError.Attributes["class"] = "error_input";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TxtName.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "Name is required";
                return;
            }
            if (!IsValidEmailAddress(TxtEmail.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "Email format not valid";
                return;
            }
            if (string.IsNullOrWhiteSpace(TxtMessage.Text))
            {
                divError.Visible = true;
                divError.InnerHtml = "Message is required";
                return;
            }

            Ado.ContactUsInsert(TxtName.Text, TxtEmail.Text, TxtMobile.Text, TxtMessage.Text);
            divError.Visible = true;
            divError.Attributes["class"] = "alert alert-success";
            divError.InnerHtml = "Successfully Submitted";

            TxtName.Text = "";
            TxtMobile.Text = "";
            TxtEmail.Text = "";
            TxtMessage.Text = "";
        }

        public bool IsValidEmailAddress(string email)
        {
            if (!string.IsNullOrEmpty(email) && new EmailAddressAttribute().IsValid(email))
                return true;
            else
                return false;
        }

    }
}