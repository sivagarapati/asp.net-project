using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string selectSQL = "SELECT * FROM Registration WHERE EmailID='" + UsernameTextBox.Text + "' and Password='" + PasswordTextBox.Text + "'";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                Session["username"] = dr["FirstName"].ToString() + " " + dr["LastName"].ToString();
                Session["id"] = dr["ID"];
                Session["EmailId"] = dr["EmailId"];
              
                if (dr["AccountType"].ToString() == "Professor")
                {
                    Response.Redirect("Professor/ProfessorHome.aspx");
                }
                else if (dr["AccountType"].ToString() == "Student") 
                {
                    Response.Redirect("Student/StudentHome.aspx");
                }
            }
            else
            {
                MsgLabel.Text = "Invalid Username and Password";
            }
        }


        catch (Exception err)
        {
            MsgLabel.Text = err.Message;
        }
        finally
        {
            con.Close();
        }
    }
}

