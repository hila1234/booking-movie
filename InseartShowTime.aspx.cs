using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InseartShowTime : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (!DAL.IsShowTimeExist(int.Parse(txtNumHourTime.Text),TimeSpan.Parse(txtHour.Text)))
            {
                ShowTime stime = new ShowTime(int.Parse(txtNumHourTime.Text), TimeSpan.Parse(txtHour.Text));
                DAL.InseartShowTime(stime);
                lblMessage.Text = "הוכנס בהצלחה";
            }
            else
                throw new Exception();
        }
        catch (Exception)
        {
            lblMessage.Text = "שעת הצגה כזאת קיימת";
        }
      
    }
}