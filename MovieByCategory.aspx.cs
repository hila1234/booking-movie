using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MovieByCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int type = int.Parse(Request.QueryString["type"]);
        DataSet ds = DAL.ShowMoviesByCategory(type);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
}