using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_StudentProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UsernameLabel.Text = Session["username"].ToString();

        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        try
        {
            string Qry = "Select ID,AccountType,FirstName,Lastname,DoB,Gender,PhoneNumber,EmailID,address From Registration WHERE ID=" + Session["ID"];
            SqlCommand cmd = new SqlCommand(Qry, con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                FristnameTextBox.Text = dr["FirstName"].ToString();
                LastnameTextBox.Text = dr["LastName"].ToString();
                DOBTextBox.Text = dr["DoB"].ToString();
                GenderTextBox.Text = dr["Gender"].ToString();
                PhonenumTextBox.Text = dr["PhoneNumber"].ToString();
                EmailIDTextBox.Text = dr["EmailID"].ToString();
                AddressTextBox.Text = dr["Address"].ToString();

            }

        }
        catch (Exception err)
        {

        }

        finally
        {
            con.Close();
        }
    }
}
