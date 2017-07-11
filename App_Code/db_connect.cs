using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

public class db_connect
{
    private MySqlConnection connection;
    public List<string>[] list_feedback_show = new List<string>[3];
    public List<string>[] list_gallery_show = new List<string>[2];

    private bool OpenConnection()
    {
        string connetionString = null;
        connetionString = "server=localhost;database=bakersinn;uid=root;pwd=password;Allow User Variables=True;";
        connection = new MySqlConnection(connetionString);
        try
        {
            connection.Open();
            return true;
        }
        catch (MySqlException ex)
        {
            return false;
        }
    }

    private bool CloseConnection()
    {
        try
        {
            connection.Close();
            return true;
        }
        catch (MySqlException ex)
        {
            return false;
        }
    }

    public int Insert(string name, string email, string sub, string msg)
    {
        try
        {
            int id = -1;
            string query = "INSERT INTO feedback (Name, Email_id, Subject, Message, Status, Date) VALUES(@name, @email, @sub, @msg, @sts, CURDATE())";

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@sub", sub);
                cmd.Parameters.AddWithValue("@msg", msg);
                cmd.Parameters.AddWithValue("@sts", false);

                cmd.ExecuteNonQuery();

                MySqlCommand cmd1 = new MySqlCommand("SELECT LAST_INSERT_ID()", connection);
                id = Convert.ToInt32(cmd1.ExecuteScalar());

                this.CloseConnection();
            }
            return id;
        }
        catch (MySqlException ex)
        {
            return -1;
        }
    }

    public void Insert_gallery(string name, string path)
    {
        try
        {
            string query = "INSERT INTO gallery (Display_name, Image_name) VALUES(@name, @path)";

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@path", path);

                cmd.ExecuteNonQuery();
                this.CloseConnection();
            }
        }
        catch (MySqlException ex)
        {
           
        }
    }

    public Boolean Login(string name, string password)
    {
        try
        {
            MySqlDataReader rdr;
            string query = "select * from login where username = @name and password = @password";

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@password", password);

                rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    this.CloseConnection();
                    return true;
                }
            }
            this.CloseConnection();
            return false;
        }
        catch (MySqlException ex)
        {
            return false;
        }
    }

    public void ApproveFeedback(int id)
    {
        try
        { 
            string query = "UPDATE feedback SET status=1 WHERE id=@id";

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.CommandText = query;
                cmd.Connection = connection;

                cmd.ExecuteNonQuery();
                this.CloseConnection();
            }
        }
        catch (MySqlException ex)
        {
            
        }
    }

    public void DeleteFeedback(int id)
    {
        try
        { 
            string query = "DELETE FROM feedback WHERE id=@id";
            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                this.CloseConnection();
            }
        }
        catch (MySqlException ex)
        {
            
        }
    }

    public List<string>[] SelectFeedback(int offset)
    {
        List<string>[] list = new List<string>[7];
        list[0] = new List<string>();
        list[1] = new List<string>();
        list[2] = new List<string>();
        list[3] = new List<string>();
        list[4] = new List<string>();
        list[5] = new List<string>();
        list[6] = new List<string>();

        try
        { 
            string query = "SELECT * FROM feedback where Status = 0 ORDER BY Date DESC, ID DESC LIMIT 5 OFFSET @offset";           
        
            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@offset", offset);
                MySqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    list[0].Add(dataReader["ID"] + "");
                    list[1].Add(dataReader["Name"] + "");
                    list[2].Add(dataReader["Email_id"] + "");
                    list[3].Add(dataReader["Subject"] + "");
                    list[4].Add(dataReader["Message"] + "");
                    list[5].Add(dataReader["Status"] + "");
                    list[6].Add(dataReader["Date"] + "");
                }

                dataReader.Close();
                this.CloseConnection();
                return list;
            }
            else
            {
                return list;
            }
        }
        catch (MySqlException ex)
        {
            return list;
        }
    }
   
    public int feedback_count(int status)
    {
        try
        { 
            int count = 0;
            string query = "select count(id) from bakersinn.feedback where Status = @status";
            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@status", status);
                count = Convert.ToInt32(cmd.ExecuteScalar());
                this.CloseConnection();
            }
            return count;
        }
        catch (MySqlException ex)
        {
            return 0;
        }
    }

    public List<string>[] feedback_show(int offset)
    {
        try
        { 
            string query = "SELECT * FROM feedback where status = 1 ORDER BY Date DESC, ID DESC LIMIT 2 OFFSET @offset";

            list_feedback_show[0] = new List<string>();
            list_feedback_show[1] = new List<string>();
            list_feedback_show[2] = new List<string>();

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@offset", offset);
                MySqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    list_feedback_show[0].Add(dataReader["Subject"] + "");
                    list_feedback_show[1].Add(dataReader["Message"] + "");
                    list_feedback_show[2].Add(dataReader["Date"] + "");
                }

                dataReader.Close();
                this.CloseConnection();
                return list_feedback_show;
            }
            else
            {
                return list_feedback_show;
            }
        }
        catch (MySqlException ex)
        {
            return list_feedback_show;
        }
    }

    public int gallery_count()
    {
        try
        { 
            int count = 0;
            string query = "select count(id) from bakersinn.gallery";
            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                count = Convert.ToInt32(cmd.ExecuteScalar());
                this.CloseConnection();
            }
            return count;
        }
        catch (MySqlException ex)
        {
            return 0;
        }
    }

    public List<string>[] gallery_show(int offset)
    {
        try
        {
            string query = "SELECT * FROM gallery ORDER BY ID LIMIT 8 OFFSET @offset";

            list_gallery_show[0] = new List<string>();
            list_gallery_show[1] = new List<string>();

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@offset", offset);
                MySqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    list_gallery_show[0].Add(dataReader["Display_name"] + "");
                    list_gallery_show[1].Add(dataReader["Image_name"] + "");
                }

                dataReader.Close();
                this.CloseConnection();
                return list_gallery_show;
            }
            else
            {
                return list_gallery_show;
            }
        }
        catch (MySqlException ex)
        {
            return list_gallery_show;
        }
    }    
}