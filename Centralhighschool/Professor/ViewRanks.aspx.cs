using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Professor_Ranks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UsernameLabel.Text = Session["username"].ToString();
        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        string join1 = "Select Row_number() over (ORDER BY totalmarks desc) as ranks,Marks.StudentID,Marks.totalmarks,Marks.grade,Registration.FirstName,Registration.Lastname FROM Marks INNER JOIN Registration on Marks.StudentID=Registration.ID ORDER BY totalmarks DESC";
        //https://www.youtube.com/watch?v=cvrwOoGwgz8 row_number function
        //https://www.youtube.com/watch?v=KwEjkpFltjc over clause function
        SqlCommand cmd = new SqlCommand(join1, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(); //return more than one value
        DataTable dt = new DataTable();
        dt.Load(dr);   //to load the datareader to the datatable
        GridView1.DataSource = dt;    //to load datatable as datascource to the gridview
        GridView1.DataBind();   // to bind the data in datatable to the grid view.
        con.Close();
    }
}