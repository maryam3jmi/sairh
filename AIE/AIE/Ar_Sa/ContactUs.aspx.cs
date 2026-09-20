using DBFunction;
using System;
using System.ComponentModel.DataAnnotations;
using System.Data;

namespace AIE.Ar_Sa
{
    public partial class ContactUs : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            divError.Visible = false;
            divError.Attributes["class"] = "error_input droidkufiregular";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            ds = Ado.LanguagesGet();
            if (Ado.BlnError)
            {
                string sError = Ado.StrError;
                return;
            }
            if (ds.Tables[0].Rows.Count > 0)
            {
                if (string.IsNullOrWhiteSpace(TxtName.Text))
                {
                    divError.Visible = true;
                    divError.InnerHtml = ds.Tables[0].Select("Title='Fullname'")[0].ItemArray[3].ToString();//"Name is required";
                    return;
                }
                if (!IsValidEmailAddress(TxtEmail.Text))
                {
                    divError.Visible = true;
                    divError.InnerHtml = ds.Tables[0].Select("Title='Email'")[0].ItemArray[3].ToString();//"Email format not valid";
                    return;
                }
                if (string.IsNullOrWhiteSpace(TxtMessage.Text))
                {
                    divError.Visible = true;
                    divError.InnerHtml = ds.Tables[0].Select("Title='Message'")[0].ItemArray[3].ToString();//"Message is required";
                    return;
                }

                Ado.ContactUsInsert(TxtName.Text, TxtEmail.Text, TxtMobile.Text, TxtMessage.Text);
                divError.Visible = true;
                divError.Attributes["class"] = "alert alert-success";
                divError.InnerHtml = ds.Tables[0].Select("Title='Submitsuccess'")[0].ItemArray[3].ToString();//"Successfully Submitted";

                TxtName.Text = "";
                TxtMobile.Text = "";
                TxtEmail.Text = "";
                TxtMessage.Text = "";

            }



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