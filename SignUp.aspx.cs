using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (!DAL.IsUserExist(idUser.Text, userNametxt.Text))
            {
                User user1 = new User(int.Parse(idUser.Text), userNametxt.Text, txtFirstname.Text, txtLastname.Text, txtPassword.Text, txtEmail.Text, DateTime.Parse(datetxt.Text), phone.Text);
                DAL.InseartUser(user1);
                Label2.Text = " נרשמת בהצלחה";
            }
            else
                throw new Exception();
        }
        catch (Exception)
        {
            Label2.Text = "המשתמש כבר קיים במערכת";
        }

    }
}