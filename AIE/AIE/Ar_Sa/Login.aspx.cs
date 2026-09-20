using DBFunction;
using System;
using System.Data;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;

namespace AIE.Ar_Sa
{
    public partial class Login : System.Web.UI.Page
    {
        DataView dv = new DataView();
        DataSet ds = new DataSet();
        string UserLevel { get; set; }
        string UserBlocked { get; set; }
        string LoginSuccess = "0";
        string DeviceType = "Desktop";
        string BrowserType = "";
        string BrowserVersion = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            divError.Visible = false;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            ds = Ado.LanguagesGet();
            if (Ado.BlnError)
            {
                string sError = Ado.StrError;
                return;
            }
            if (ds.Tables[0].Rows.Count > 0)
            {




                if (string.IsNullOrWhiteSpace(TxtUserName.Text))
                {
                    divError.Visible = true;
                    divError.InnerHtml = ds.Tables[0].Select("Title='Username'")[0].ItemArray[3].ToString();// "Username is required";
                    return;
                }
                if (string.IsNullOrWhiteSpace(TxtPassword.Text))
                {
                    divError.Visible = true;
                    divError.InnerHtml = ds.Tables[0].Select("Title='Password'")[0].ItemArray[3].ToString();//"Password is required";
                    return;
                }


                dv = Ado.UsersGetByUserName(TxtUserName.Text, TxtPassword.Text);
                if (Ado.BlnError) return;
                if (dv.Count > 0)
                {
                    UserLevel = dv[0]["UserLevel"].ToString();
                    UserBlocked = dv[0]["UserBlocked"].ToString();
                    if (UserBlocked == "True")
                    {
                        divError.Visible = true;
                        divError.InnerHtml = "Please contact administrator to validate your account";
                        return;


                    }

                    LoginSuccess = "1";
                    FormsAuthenticationTicket Authticket = new FormsAuthenticationTicket(
                                                1,
                                                TxtUserName.Text,
                                                DateTime.Now,
                                                DateTime.Now.AddMinutes(60),
                                                true,
                                                UserLevel,
                                                FormsAuthentication.FormsCookiePath);

                    string hash = FormsAuthentication.Encrypt(Authticket);
                    HttpCookie Authcookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);
                    if (Authticket.IsPersistent) Authcookie.Expires = Authticket.Expiration;
                    Response.Cookies.Add(Authcookie);

                    //set Session["UserDetails"]
                    if (dv.Table != null)
                    {
                        SetUserDetails(dv.Table);
                    }

                    InsertToLoginHistory();

                    string returnUrl = Request.QueryString["ReturnUrl"];
                    if (returnUrl == null) returnUrl = "~/Ar_Sa";
                    Response.Redirect(returnUrl);
                }
                else
                {
                    LoginSuccess = "0";

                    divError.Visible = true;
                    divError.InnerHtml = ds.Tables[0].Select("Title='UsernamePass'")[0].ItemArray[3].ToString();//"UserName or Password does not match.";
                    return;


                }
            }
        }
        private static void SetUserDetails(DataTable dTable)
        {
            Ado.Users user = new Ado.Users();
            if (dTable.Rows[0]["UserID"] != null)
                user.UserID = Convert.ToInt32(dTable.Rows[0]["UserID"]);
            if (dTable.Rows[0]["UserName"] != null)
                user.UserName = dTable.Rows[0]["UserName"].ToString();
            if (dTable.Rows[0]["FullName"] != null)
                user.FullName = dTable.Rows[0]["FullName"].ToString();
            if (dTable.Rows[0]["UserLevel"] != null)
                user.UserLevel = dTable.Rows[0]["UserLevel"].ToString();

            Ado.UserDetails = user;
        }
        private void InsertToLoginHistory()
        {
            GetDeviceType();
            GetBrowserType();
            string userid = Ado.UserDetails.UserID.ToString() == "" ? "0" : Ado.UserDetails.UserID.ToString();
            Ado.LoginHistoryInsert(userid, HttpContext.Current.Request.UserHostAddress.ToString(), DeviceType, BrowserType, BrowserVersion, LoginSuccess);

            if (Ado.BlnError) return;

        }
        private void GetDeviceType()
        {
            string userAgent = Request.ServerVariables["HTTP_USER_AGENT"];
            Regex OS = new Regex(@"(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            Regex device = new Regex(@"1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            string device_info = string.Empty;
            if (OS.IsMatch(userAgent))
            {
                device_info = OS.Match(userAgent).Groups[0].Value;
            }

            if (device.IsMatch(userAgent.Substring(0, 4)))
            {
                device_info += device.Match(userAgent).Groups[0].Value;
            }

            if (!string.IsNullOrEmpty(device_info))
            {
                DeviceType = device_info;
            }
        }
        private void GetBrowserType()
        {
            HttpBrowserCapabilities browser = Request.Browser;
            BrowserType = browser.Browser;
            BrowserVersion = browser.Version;
        }
    }
}