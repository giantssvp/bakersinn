using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for db_connect
/// </summary>
public class db_connect
{
    private MySqlConnection connection;
    /*
    public db_connect()
    {
        this.OpenConnection();

        //this.Insert();
        MySqlCommand cmd = new MySqlCommand("select * from feedback", connection);
        MySqlDataReader rdr;
        rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            message.InnerText = rdr.GetString(1);
        }
        
        List<string>[] list = new List<string>[3];
        list = this.Select();
        string dogCsv = string.Join(",", list[0]);

        MessageBox.Show(dogCsv);
        MessageBox.Show(list.Count().ToString());
        

        this.CloseConnection();
    }
    */

    private bool OpenConnection()
    {
        string connetionString = null;
        //MySqlConnection connection;
        connetionString = "server=localhost;database=bakersinn;uid=root;pwd=password;Allow User Variables=True;";
        connection = new MySqlConnection(connetionString);
        try
        {
            connection.Open();
            MessageBox.Show("Connection Open ! ");
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

    //Select statement
    public List<string>[] Select()
    {
        string query = "SELECT * FROM emp";

        //Create a list to store the result
        List<string>[] list = new List<string>[3];
        list[0] = new List<string>();
        list[1] = new List<string>();
        list[2] = new List<string>();

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
                list[0].Add(dataReader["emp_id"] + "");
                list[1].Add(dataReader["emp_name"] + "");
                list[2].Add(dataReader["emp_age"] + "");
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

    /*private void button1_Click(object sender, EventArgs e)
    {
        string connetionString = null;
        MySqlConnection cnn;
        connetionString = "server=192.168.56.101;database=bakersinn;uid=root;pwd=password;";
        cnn = new MySqlConnection(connetionString);
        try
        {
            cnn.Open();
            MessageBox.Show("Connection Open ! ");
            cnn.Close();
        }
        catch (Exception ex)
        {
            MessageBox.Show("Can not open connection ! ");
        }
        }*/
}