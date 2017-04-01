using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Professor_Uploadmarks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UsernameLabel.Text = Session["username"].ToString();
    }

    protected void CalculateButton_Click(object sender, EventArgs e)
    {
        int tot;
        int m1 = int.Parse(Subj1MarkTextBox.Text);
        int m2 = int.Parse(Subj2MarkTextBox.Text);
        int m3 = int.Parse(Subj3MarkTextBox.Text);
        int m4 = int.Parse(Subj4MarkTextBox.Text);
        int m5 = int.Parse(Subj5MarkTextBox.Text);
        int m6 = int.Parse(Subj5MarkTextBox.Text);
        tot = m1 + m2 + m3 + m4 + m5 + m6;
        TotalTextBox.Text = tot.ToString();
       
        float pre = (float)((tot * 100) / 600);
        PrecentageTextBox4.Text = pre.ToString();
        {            
            if (pre>90 )
            {
                GradeTextBox3.Text = "A";
            }
            else if(pre>80 && pre<=90)
            {
                GradeTextBox3.Text = "B";
            }
            else if(pre>70 && pre<=80)
            {
                GradeTextBox3.Text = "C";
            }
            else if(pre>60 && pre<=70)
            {
                GradeTextBox3.Text = "D";
            }
            else if(pre>50 && pre <=60)
            {
                GradeTextBox3.Text = "E";
            }
            else {
                GradeTextBox3.Text = "Fail";
            }
        }

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {

        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        try
        {
            int rec;
            string insertQry = "insert into Marks(StudentId,Subject1,Subject2,Subject3,Subject4,Subject5,Subject6,marks1,marks2,marks3,marks4,marks5,marks6,totalmarks,percentage,grade) values('" +DropDownList1.Text + "','" + Subject1TextBox.Text + "','" + Subject2TextBox.Text + "','" + Subject3TextBox.Text + "','" + Subject4TextBox.Text + "','" + Subject5TextBox.Text + "','" + Subject6TextBox.Text + "','" + Subj1MarkTextBox.Text + "','" + Subj2MarkTextBox.Text + "','" + Subj3MarkTextBox.Text + "','" + Subj4MarkTextBox.Text + "','" + Subj5MarkTextBox.Text + "','" + Subj6MarkTextBox.Text + "','"+TotalTextBox.Text+"','"+PrecentageTextBox4.Text+"','"+GradeTextBox3.Text+"')";
            SqlCommand cmd = new SqlCommand(insertQry, con);
            con.Open();
            rec = cmd.ExecuteNonQuery();
            if (rec > 0)
            {
                MsgLabel.Text = " marks of " + DropDownList1.Text + " inserted sucessfully..";
            }

        }
        catch (Exception err)
        {
            MsgLabel.Text = "the student " + DropDownList1.Text+ " marks already submitted  " ;
        }

        finally
        {
            con.Close();
        }
    }

    protected void ClearButton1_Click(object sender, EventArgs e)
    {
        Subject1TextBox.Text = "";
        Subject2TextBox.Text = "";
        Subject3TextBox.Text = "";
        Subject4TextBox.Text = "";
        Subject5TextBox.Text = "";
        Subject6TextBox.Text = "";
        Subj1MarkTextBox.Text = "";
        Subj2MarkTextBox.Text = "";
        Subj3MarkTextBox.Text = "";
        Subj4MarkTextBox.Text = "";
        Subj5MarkTextBox.Text = "";
        Subj6MarkTextBox.Text = "";
        TotalTextBox.Text = "";
        PrecentageTextBox4.Text = "";
        GradeTextBox3.Text = ""; 
    }
}