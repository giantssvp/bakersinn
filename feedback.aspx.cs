using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


public partial class feedback : System.Web.UI.Page
{
    public List<string>[] list = new List<string>[3];
    public int total;
    
    protected void Page_Load(object sender, EventArgs e)
    {        
        DataBind();
        var db_obj = new db_connect();
        list = db_obj.feedback_show(0);
        total = list[0].Count();
    }

    protected void submit_button_Click(object sender, EventArgs e)
    {
        var db_obj = new db_connect();
        db_obj.Insert(name.Value, email.Value, subject.Value, message.Value);
        name.Value = email.Value = subject.Value = message.Value = "";
    }

    protected void old_post_Click(object sender, EventArgs e)
    {        
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(1);
        
        if (Int32.Parse(Session["offset"].ToString()) < (cnt-2))
            Session["offset"] = Int32.Parse(Session["offset"].ToString()) + 2;
        else
            if (cnt % 2 == 0)
                Session["offset"] = cnt - 2;
            else
                Session["offset"] = cnt - 1;
        
        list = db_obj.feedback_show(Int32.Parse(Session["offset"].ToString()));
        total = list[0].Count();
    }

    protected void last_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(1);

        if (cnt > 0)
        {
            if (cnt % 2 == 0)
                Session["offset"] = cnt - 2;
            else
                Session["offset"] = cnt - 1;
        }

        list = db_obj.feedback_show(Int32.Parse(Session["offset"].ToString()));
        total = list[0].Count();
    }

    protected void new_post_Click(object sender, EventArgs e)
    {
        DataBind();
        if (Int32.Parse(Session["offset"].ToString()) >= 2)
        {
            Session["offset"] = Int32.Parse(Session["offset"].ToString()) - 2;
        }
        else
            Session["offset"] = 0;

        var db_obj = new db_connect();
        list = db_obj.feedback_show(Int32.Parse(Session["offset"].ToString()));
        total = list[0].Count();
    }

    protected void first_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();
        list = db_obj.feedback_show(0);
        total = list[0].Count();
    }
}