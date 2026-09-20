using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIE.Ar_Sa
{
    public partial class Default : System.Web.UI.Page
    {
        DateTime startDate = DateTime.Now;
        DateTime endDate = Convert.ToDateTime("2024-01-20 17:00:34.943");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //DataTable dt = new DataTable();
                //dt.Columns.Add("EndDate", typeof(DateTime));
                //dt.Rows.Add("2024-01-20 17:00:34.943");
                //startDate = DateTime.Now;
                //endDate = Convert.ToDateTime(dt.Rows[0]["EndDate"].ToString());
            }
           
            
        }

        //public string CalculateTimeDifference(DateTime startDate, DateTime endDate)
        //{
        //    int days = 0; int hours = 0; int mins = 0; int secs = 0;
        //    string final = string.Empty;
        //    if (endDate > startDate)
        //    {
        //        days = (endDate - startDate).Days;
        //        hours = (endDate - startDate).Hours;
        //        mins = (endDate - startDate).Minutes;
        //        secs = (endDate - startDate).Seconds;
        //        final = string.Format("{0} days {1} hours {2} mins {3} secs", days, hours, mins, secs);
        //    }
        //    return final;
        //}

        //protected void timer_Tick(object sender, EventArgs e)
        //{
        //    lblTime.Text = CalculateTimeDifference(startDate, endDate);
        //}
    }
}