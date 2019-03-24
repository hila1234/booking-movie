using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InseartSreaning : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //בעיה צריך לעשות בדיקות תקינות השאלה לפי מה כי אסור קומבנציה של כל הצירופים האפשריים
        Screen screen = new Screen(int.Parse(ddlNameMovie.SelectedValue), int.Parse(ddlHall.SelectedValue), DateTime.Parse(txtDateScreaning.Text), int.Parse(ddlShowTime.SelectedValue));
        DAL.InseartScreening(screen);
        lblMessage.Text= "הוכנס בהצלחה";
    }
}