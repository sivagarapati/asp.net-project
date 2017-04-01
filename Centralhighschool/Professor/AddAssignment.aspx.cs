using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Professor_UploadAssignment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RangeValidator1.MaximumValue = DateTime.Now.ToShortDateString();
        RangeValidator1.MinimumValue = "01/01/0001";
        UsernameLabel.Text = Session["username"].ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        try
        {
            int rec;
            string Qry = "Insert into Add_Assignment (DepartmentName,ProfessorName,AssignmentName,AssignmentDate) Values ('"+TextBox1.Text+"','"+ DropDownList1.Text + "','"+ TextBox3.Text + "','"+ TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(Qry, con);
            con.Open();
            rec = cmd.ExecuteNonQuery();
            if (rec > 0)
            {
                MsgLabel.Text = "Assignment Add Sucussfully.";
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