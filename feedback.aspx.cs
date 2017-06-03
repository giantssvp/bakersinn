using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void submit_button_Click(object sender, EventArgs e)
    {
        //MessageBox.Show(name.Value +  email.Value + subject.Value + message.Value);
        var db_obj = new db_connect();
        //db_obj.Insert("Shyam","shyam.d@gmail.com","Subject ","Message as is");
        db_obj.Insert(name.Value, email.Value, subject.Value, message.Value);
        name.Value = email.Value = subject.Value = message.Value = "";
    }
}