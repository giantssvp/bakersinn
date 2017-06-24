using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class contentManagement : System.Web.UI.Page
{
    public List<string>[] list = new List<string>[7];
    public int row_count;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();
        list = db_obj.SelectFeedback();
        row_count = list[0].Count;
    }
    protected void feedback_approve_button_Click(object sender, EventArgs e)
    {
        string value = hdn_textbox.Value;
        string num = Regex.Match(value, @"\d+").Value;
        int feedback_id = Int32.Parse(num);
        var db_obj = new db_connect();
        db_obj.ApproveFeedback(feedback_id);
        Page_Load(sender, e);
    }
    
    protected void feedback_delete_button_Click(object sender, EventArgs e)
    {
        string value = hdn_textbox.Value;
        string num = Regex.Match(value, @"\d+").Value;
        int feedback_id = Int32.Parse(num);
        var db_obj = new db_connect();
        db_obj.DeleteFeedback(feedback_id);
        Page_Load(sender, e);
    }
}