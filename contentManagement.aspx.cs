using System;
using System.Collections.Generic;
using System.Linq;
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
        /*
        for (int i = 0; i < list.Count(); i++) {
            for (int j = 0; j < (list[i].Count()); i++)
            {

                MessageBox.Show(list[i][j]);
            }
        } */
    }
    protected void feedback_approve_button_Click(object sender, CommandEventArgs e)
    {
        string value = e.CommandArgument.ToString();
        MessageBox.Show(value);
        var db_obj = new db_connect();
        int result;
        //result = db_obj.ApproveFeedback();

    }
    protected void feedback_delete_button_Click(object sender, EventArgs e)
    {
        int result;
        var db_obj = new db_connect();
        //result = db_obj.DeleteFeedback();
    }
}