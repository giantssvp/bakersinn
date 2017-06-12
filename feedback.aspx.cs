using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


public partial class feedback : System.Web.UI.Page
{
    public string dogCsv;
    public List<string>[] list = new List<string>[3];
    public int total;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBind();
        
        var db_obj = new db_connect();
        
        
        list = db_obj.feedback_show();
        dogCsv = string.Join(",", list[0][0]);
        total = list[0].Count();

        //MessageBox.Show(dogCsv);
        //MessageBox.Show(list[0].Count().ToString());
    }

    protected void submit_button_Click(object sender, EventArgs e)
    {
        var db_obj = new db_connect();
        db_obj.Insert(name.Value, email.Value, subject.Value, message.Value);
        name.Value = email.Value = subject.Value = message.Value = "";
    }
}