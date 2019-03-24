using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;

public partial class InseartCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = DAL.ShowAllCategory();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (!DAL.IsCategoryExist(txtIntCategory.Text, txtNameCategory.Text))
            {
                 Category category = new Category( int.Parse(txtIntCategory.Text), txtNameCategory.Text);
                 DAL.InseartCategory(category);
                 lblMessage.Text = "הוכנס בהצלחה ";
            }
            else
                throw new Exception();
        }
        catch (Exception)
        {
            lblMessage.Text = "הקטגוריה קיימת במערכת";
        }
    }


    
}