using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload_image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void UploadFile(object sender, EventArgs e)
    {
        string folderPath = Server.MapPath("~/images/gallery/");

        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath))
        {
            //If Directory (Folder) does not exists. Create it.
            Directory.CreateDirectory(folderPath);
        }

        //Save the File to the Directory (Folder).
        FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //Display the success message.
        lblMessage.Text = folderPath + Path.GetFileName(FileUpload1.FileName) + " has been uploaded.";

        var name = display_name.Value;
        var path = "images/gallery/" + Path.GetFileName(FileUpload1.FileName);

        var db_obj = new db_connect();
        db_obj.Insert_gallery(name, path);

        display_name.Value = "";
    }
}