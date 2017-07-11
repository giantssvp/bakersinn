using System;
using System.Net;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net.Mail;
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

    private void SendHtmlFormattedEmail(string recepientEmail, string subject, string body)
    {
        using (MailMessage mailMessage = new MailMessage())
        {
            mailMessage.From = new MailAddress("shyamdeshmukh1@gmail.com"); //new MailAddress(ConfigurationManager.AppSettings["UserName"]);
            mailMessage.Subject = subject;
            mailMessage.Body = body;
            mailMessage.IsBodyHtml = true;
            mailMessage.To.Add(new MailAddress(recepientEmail));
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["Host"];
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = ConfigurationManager.AppSettings["UserName"];
            NetworkCred.Password = ConfigurationManager.AppSettings["Password"];
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]);
            smtp.Send(mailMessage);
        }
    }

    protected void submit_button_Click(object sender, EventArgs e)
    {
        try
        {
            var db_obj = new db_connect();
            int latest_id = db_obj.Insert(name.Value, email.Value, subject.Value, message.Value);
            MessageBox.Show(latest_id.ToString());
        
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("abcdtes26@gmail.com");
            mail.To.Add("abcdtes26@gmail.com");
            mail.Subject = "Test Mail";
            mail.IsBodyHtml = true;
            string htmlBody;

           htmlBody = "<html> <head> </head> <body>" +
                       "<a href =\"http://localhost:60210/login.aspx\"> <input id = \"Button1\" onclick=\"Click()\" type = \"button\" value = \"button\" /> </a>" +
                       "<br /> <br /> <table border=\"1\"> <tr> <th> ID </th> <th> Name </th> <th> Email </th> <th> Subject </th> <th> Feedback </th> </tr> <tr> " +
                       "<td>" + latest_id + "</td>" +
                       "<td>" + name.Value + "</td>" +
                       "<td>" + email.Value + "</td>" +
                       "<td>" + subject.Value + "</td>" +
                       "<td>" + message.Value + "</td>" + 
                       "</tr> </table> </body> </html> ";
            MessageBox.Show(htmlBody);

            /*htmlBody = "<button id=\"test\"  type=\"button\" runat= \"server\" onclick=\"Click()\">Test" + latest_id.ToString() + "</button>" +
                        "<script> " +
                                    "function Click() {" +
                                        "window.open(\"http://yahoo.com\");" +
                                   " }" +
                               " </script>";*/
            mail.Body = htmlBody;
            //mail.Body = "This is for testing SMTP mail from GMAIL" + latest_id.ToString();

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("abcdtes26@gmail.com", "9921642540");
            SmtpServer.EnableSsl = true;

            //DeliveryMethod = SmtpDeliveryMethod.Network;
            
            SmtpServer.Send(mail);

            name.Value = email.Value = subject.Value = message.Value = "";
            MessageBox.Show("mail Send");
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.ToString());
        }
    }
    
    protected void old_post_Click(object sender, EventArgs e)
    {        
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(1);
    
        if (cnt != 0)
        {
            if (Int32.Parse(Session["offset"].ToString()) < (cnt - 2))
                Session["offset"] = Int32.Parse(Session["offset"].ToString()) + 2;
            else
            if (cnt % 2 == 0)
                Session["offset"] = cnt - 2;
            else
                Session["offset"] = cnt - 1;

            list = db_obj.feedback_show(Int32.Parse(Session["offset"].ToString()));
            total = list[0].Count();
        }
        
    }

    protected void last_Click(object sender, EventArgs e)
    {
        DataBind();
        var db_obj = new db_connect();

        int cnt = db_obj.feedback_count(1);
        if (cnt != 0)
        {
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
        Session["offset"] = 0;
        var db_obj = new db_connect();
        list = db_obj.feedback_show(0);
        total = list[0].Count();
    }

    private string PopulateBody(string userName, string title, string url, string description)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/EmailTemplate.htm")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{UserName}", userName);
        body = body.Replace("{Title}", title);
        body = body.Replace("{Url}", url);
        body = body.Replace("{Description}", description);
        return body;
    }
}