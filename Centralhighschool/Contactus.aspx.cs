using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        try
        {
            int rec;
            string insertQry = "insert into Contact_US(Name,EmailId,PhoneNum,Message) values('" +NameTextBox.Text + "','" + EmailIDTextBox.Text + "','" + PhonenumTextBox.Text + "','" + MessageTextBox.Text + "')";
            SqlCommand cmd = new SqlCommand(insertQry, con);
            con.Open();
            rec = cmd.ExecuteNonQuery();
            if (rec > 0)
            {
                MsgLabel.Text = " Thank You " +  NameTextBox.Text + ".. We Contact  you ASAP.";
                NameTextBox.Text = "";
                EmailIDTextBox.Text = "";
                PhonenumTextBox.Text = "";
                MessageTextBox.Text = "";
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