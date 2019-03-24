using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class InseartHall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Repeater1.Visible = false;
        DataSet ds = DAL.ShowAllHalls();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Hall hall = new Hall(int.Parse(txtNumSeat.Text), txtNameHall.Text);
        DAL.InsertHall(hall);
        lblMessage.Text = "הוכנס בהצלחה ";
          
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
      //  Repeater1.Visible = true;
    }
}