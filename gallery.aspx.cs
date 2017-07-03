using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class gallery : System.Web.UI.Page
{
    public List<string>[] list = new List<string>[2];
    public int row_count;

    protected void Page_Load(object sender, EventArgs e)
    {
        var db_obj = new db_connect();
        int cnt = db_obj.gallery_count();
        list = db_obj.gallery_show(0);
        row_count = list[0].Count;      
    }
    
    protected void previous_button_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.gallery_count();

        if (Int32.Parse(Session["offset_gallery"].ToString()) > 8)
            Session["offset_gallery"] = Int32.Parse(Session["offset_gallery"].ToString()) - 8;
        else
            Session["offset_gallery"] = 0;

        list = db_obj.gallery_show(Int32.Parse(Session["offset_gallery"].ToString()));
        row_count = list[0].Count();
    }

    protected void next_button_Click(object sender, EventArgs e)
    {
        DataBind();
        int rem = -1;
        var db_obj = new db_connect();
        
        int cnt = db_obj.gallery_count();
        if (cnt > 0)
        {
            if (Int32.Parse(Session["offset_gallery"].ToString()) < cnt - 8)
            {
                Session["offset_gallery"] = Int32.Parse(Session["offset_gallery"].ToString()) + 8;
            }
            else
            {
                rem = cnt % 8;
                if (rem == 0)
                    Session["offset_gallery"] = cnt - 8;
                else
                    Session["offset_gallery"] = cnt - rem;
            }
        }

        list = db_obj.gallery_show(Int32.Parse(Session["offset_gallery"].ToString()));
        row_count = list[0].Count();
    }
}