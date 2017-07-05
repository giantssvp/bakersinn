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
        if (Int32.Parse(Session["login"].ToString()) == 1)
        {
            list = db_obj.SelectFeedback(0);
            row_count = list[0].Count;
        }
        else
        {
            Response.Redirect("/login.aspx");
        }

    }

    protected void feedback_approve_button_Click(object sender, EventArgs e)
    {
        var c_id = Request.Form["approve"].ToString();
        int feedback_id = -1;
        string[] values = c_id.Split(',');
        var db_obj = new db_connect();
        for (int i = 0; i < values.Length; i++)
        {
            values[i] = values[i].Trim();
            feedback_id = Int32.Parse(values[i]);
            db_obj.ApproveFeedback(feedback_id);
        }
        Page_Load(sender, e);
    }
    
    protected void feedback_delete_button_Click(object sender, EventArgs e)
    {
        var c_id = Request.Form["approve"].ToString();
        int feedback_id = -1;
        string[] values = c_id.Split(',');
        var db_obj = new db_connect();
        for (int i = 0; i < values.Length; i++)
        {
            values[i] = values[i].Trim();
            feedback_id = Int32.Parse(values[i]);
            db_obj.DeleteFeedback(feedback_id);
        }
        Page_Load(sender, e);
    }

    protected void pagination_first_button_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();
        list = db_obj.SelectFeedback(0);
        row_count = list[0].Count;
    }

    protected void pagination_last_button_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(0);

        int rem = cnt % 5;
        if (rem == 0)
            Session["offset_login"] = cnt - 5;
        else
            Session["offset_login"] = cnt - rem;

        list = db_obj.SelectFeedback(Int32.Parse(Session["offset_login"].ToString()));
        row_count = list[0].Count();
    }

    protected void pagination_next_button_Click(object sender, EventArgs e)
    {
        DataBind();
        int rem = -1;
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(0);
        if (cnt > 0)
        {
            if (Int32.Parse(Session["offset_login"].ToString()) < cnt - 5)
            {
                Session["offset_login"] = Int32.Parse(Session["offset_login"].ToString()) + 5;
            }
            else
            {
                rem = cnt % 5;
                if (rem == 0)
                    Session["offset_login"] = cnt - 5;
                else
                    Session["offset_login"] = cnt - rem;
            }
        }

        list = db_obj.SelectFeedback(Int32.Parse(Session["offset_login"].ToString()));
        row_count = list[0].Count();
    }

    protected void pagination_previous_button_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(0);

        if (Int32.Parse(Session["offset_login"].ToString()) > 5)
            Session["offset_login"] = Int32.Parse(Session["offset_login"].ToString()) - 5;
        else
            Session["offset_login"] = 0;

        list = db_obj.SelectFeedback(Int32.Parse(Session["offset_login"].ToString()));
        row_count = list[0].Count();
    }

    protected void logout(object sender, EventArgs e)
    {
            Session["login"] = 0;
            Response.Redirect("/login.aspx");
    }
}