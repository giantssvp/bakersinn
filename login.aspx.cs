﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["offset_login"] = 0;
        Session["login"] = 0;
    }

    protected void login_button_Click(object sender, EventArgs e)
    {
        var db_obj = new db_connect();
        var result = db_obj.Login(username.Value, password.Value);
        username.Value = password.Value = "";
        if (result == true)
        {
            Session["login"] = 1;
            lblLogin.Text = "";
            Response.Redirect("/contentManagement.aspx");
        }
        else
        {
            Session["login"] = 0;
            lblLogin.Text = "Login Failed";
        }
    }
}