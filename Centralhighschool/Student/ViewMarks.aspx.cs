using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_ViewMarks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UsernameLabel.Text = Session["username"].ToString();

        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        try
        {
            string Qry = "Select Subject1,Subject2,Subject3,Subject4,Subject5,Subject6,marks1,marks2,marks3,marks4,marks5,marks6,totalmarks,percentage,grade from Marks Where StudentID="+Session["id"];;
            SqlCommand cmd = new SqlCommand(Qry, con);
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
               
                subj1TextBox.Text = dr["Subject1"].ToString();
                subj2TextBox.Text = dr["Subject2"].ToString();
                subj3TextBox.Text = dr["Subject3"].ToString();
                subj4TextBox.Text = dr["Subject4"].ToString();
                subj5TextBox.Text = dr["Subject5"].ToString();
                subj6TextBox.Text = dr["Subject6"].ToString();
                Subj1markTextBox.Text = dr["marks1"].ToString();
                Subj2markTextBox.Text = dr["marks2"].ToString();
                Subj3markTextBox.Text = dr["marks3"].ToString();
                Subj4markTextBox.Text = dr["marks4"].ToString();
                Subj5markTextBox.Text = dr["marks5"].ToString();
                Subj6markTextBox.Text = dr["marks6"].ToString();
                TotalTextBox.Text = dr["totalmarks"].ToString();
                PrecentageTextBox4.Text = dr["percentage"].ToString();
                GradeTextBox3.Text = dr["grade"].ToString();
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