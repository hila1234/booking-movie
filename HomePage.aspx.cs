using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            DataSet ds = DAL.ShowAllMovies();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
           
        }
    }

   /*  iframe();   
            ((HtmlControl)(form1.FindControl("ifrm"))).Attributes["src"] =  <%# Eval("video")%>;
    * protected void iframe()

    {

        LiteralControl literal = new LiteralControl();

        literal.Text = "<iframe name='we' id='12'  frameborder='no' scrolling='auto' height='200px' width='40%'  src='content.aspx' style='left:0; background-color:#B8B8B8;'></iframe>";
         
        div1.Controls.Add(literal);

    }*/
   
}