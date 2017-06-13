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
    
    private bool OpenConnection()
    {
        string connetionString = null;
        //MySqlConnection connection;
        connetionString = "server=localhost;database=bakersinn;uid=root;pwd=password;Allow User Variables=True;";
        connection = new MySqlConnection(connetionString);
        try
        {
            connection.Open();
            //MessageBox.Show("Connection Open ! ");
            return true;
        }
        catch (MySqlException ex)
        {
            //When handling errors, you can your application's response based 
            //on the error number.
            //The two most common error numbers when connecting are as follows:
            //0: Cannot connect to server.
            //1045: Invalid user name and/or password.
            switch (ex.Number)
            {
                case 0:
                    MessageBox.Show("Cannot connect to server.  Contact administrator");
                    break;

                case 1045:
                    MessageBox.Show("Invalid username/password, please try again");
                    break;
            }
            return false;
        }
    }

    //Close connection
    private bool CloseConnection()
    {
        try
        {
            connection.Close();
            return true;
        }
        catch (MySqlException ex)
        {
            MessageBox.Show(ex.Message);
            return false;
        }
    }

    //Insert statement
    public void Insert(string name, string email, string sub, string msg)
    {
        string query = "INSERT INTO feedback (Name, Email_id, Subject, Message, Status, Date) VALUES(@name, @email, @sub, @msg, @sts, CURDATE())";

        //open connection
        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@sub", sub);
            cmd.Parameters.AddWithValue("@msg", msg);
            cmd.Parameters.AddWithValue("@sts", false);

            //Execute command
            cmd.ExecuteNonQuery();

            //close connection
            this.CloseConnection();
        }
    }

    //Insert statement
    public Boolean Login(string name, string password)
    {
        
        MySqlDataReader rdr;
        
        string query = "select * from login where username = @name and password = @password";
       
        //open connection
        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
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

    //Update statement
    public void Update()
    {
        string query = "UPDATE feedback SET status='true' WHERE id=12";

        //Open connection
        if (this.OpenConnection() == true)
        {
            //create mysql command
            MySqlCommand cmd = new MySqlCommand();
            //Assign the query using CommandText
            cmd.CommandText = query;
            //Assign the connection using Connection
            cmd.Connection = connection;

            //Execute query
            cmd.ExecuteNonQuery();

            //close connection
            this.CloseConnection();
        }
    }

    //Delete statement
    public void Delete()
    {
        string query = "DELETE FROM emp WHERE emp_name='John Smith'";

        if (this.OpenConnection() == true)
        {
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.ExecuteNonQuery();
            this.CloseConnection();
        }
    }


    //Select Feedback
    //Select statement
    public List<string>[] SelectFeedback()
    {
        string query = "SELECT * FROM feedback";

        //Create a list to store the result
        List<string>[] list = new List<string>[7];
        list[0] = new List<string>();
        list[1] = new List<string>();
        list[2] = new List<string>();
        list[3] = new List<string>();
        list[4] = new List<string>();
        list[5] = new List<string>();
        list[6] = new List<string>();
        

        //Open connection
        if (this.OpenConnection() == true)
        {
            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, connection);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //Read the data and store them in the list
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

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.CloseConnection();

            //return list to be displayed
            return list;
        }
        else
        {
            return list;
        }
    }

    public int feedback_count()
    {
        int count = 0;
        string query = "select count(id) from bakersinn.feedback where Status = 1";
        if (this.OpenConnection() == true)
        {
            MySqlCommand cmd = new MySqlCommand(query, connection);
            count = Convert.ToInt32(cmd.ExecuteScalar());
            this.CloseConnection();
        }
        return count;
    }

    //Select statement
    public List<string>[] feedback_show(int offset)
    {
        string query = "SELECT * FROM feedback where status = 1 ORDER BY Date DESC LIMIT 2 OFFSET @offset";

        //Create a list to store the result
        list_feedback_show[0] = new List<string>();
        list_feedback_show[1] = new List<string>();
        list_feedback_show[2] = new List<string>();

        //Open connection
        if (this.OpenConnection() == true)
        {
            //Create Command
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@offset", offset);
            //Create a data reader and Execute the command
            MySqlDataReader dataReader = cmd.ExecuteReader();

            //Read the data and store them in the list
            while (dataReader.Read())
            {
                list_feedback_show[0].Add(dataReader["Subject"] + "");
                list_feedback_show[1].Add(dataReader["Message"] + "");
                list_feedback_show[2].Add(dataReader["Date"] + "");
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.CloseConnection();

            //return list to be displayed
            return list_feedback_show;
        }
        else
        {
            return list_feedback_show;
        }
    }    
}