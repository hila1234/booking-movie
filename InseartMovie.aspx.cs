using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class InseartMovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUploadImage.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(FileUploadImage.FileName);
                FileUploadImage.SaveAs(Server.MapPath("~/MovieImages/") + filename); // מעלה
                string ImagePath = "~/MovieImages/" + filename; // מכניס לdb 

                /*
                string path = Path.GetFileName(FileUploadVideo.FileName);
                path = path.Replace(" ", "");
                FileUploadVideo.SaveAs(Server.MapPath("~/Videos/") + path);
                String link = "MovieVideo/" + path;
                string strVideo = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></video>";
     


                 string filenamevideo = Path.GetFileName(FileUploadVideo.FileName);
                 FileUploadVideo.SaveAs(Server.MapPath("~/MovieVideo/") + filenamevideo); // מעלה
                
                string VideoPath = "~/MovieVideo/" + filenamevideo; // מכניס לdb 
                */
                Movie movie = new Movie(txtNameMovie.Text, int.Parse(DropDownListCategory.SelectedValue), int.Parse(txtLengthMovie.Text), txtActors.Text, ImagePath, TextBoxVideo.Text);
             DAL.InseartMovie(movie);
             lblMessage.Text = "הסרט הועלה בהצלחה";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "לא ניתן להעלות את הקובץ " + ex.Message;
            }
        }


    }

     public void DeleteFileFromFolder(string StrFilename)
    {
        string strPhysicalFolder = Server.MapPath("\\");
        string strFileFullPath = strPhysicalFolder + StrFilename;
        if (System.IO.File.Exists(strFileFullPath))
        {
            System.IO.File.Delete(strFileFullPath);
        }
    }
  

}