using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RangeValidator1.MinimumValue=DateTime.Today.AddYears(-100).ToShortDateString();
        RangeValidator1.MaximumValue = DateTime.Today.ToShortDateString();
    }



    protected void CreateaAccountButton_Click(object sender, EventArgs e)
    {
        string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
        SqlConnection con = new SqlConnection(connectionstring);
        try
        {
            int rec;
            string insertQry = "insert into Registration(AccountType,FirstName,LastName,Dob,Gender,PhoneNumber,Address,EmailID,Password) values('"+RadioButtonList1.SelectedItem.Text+"','"+FirstnameTextBox.Text+"','"+LastnameTextBox.Text+"','"+DOBTextBox.Text+"','"+GenderDropDownList.SelectedValue+"','"+PhonenumTextBox.Text+"','"+AddressTextBox.Text+"','"+EmailIDTextBox.Text+"','"+PasswordTextBox.Text+"')";
            SqlCommand cmd = new SqlCommand(insertQry, con);
            con.Open();
            rec = cmd.ExecuteNonQuery();
            if (rec > 0)
            {
                msgLabel.Text = rec + " Account Created Successfully";
            }
        }
        catch(Exception err)
        {
            msgLabel.Text = "email already been existing  " + EmailIDTextBox.Text;
        }

        finally
        {
            con.Close();
        }
    }

    protected void ClearButton1_Click(object sender, EventArgs e)
    {
        RadioButtonList1.SelectedIndex = -1;
        FirstnameTextBox.Text ="";
        LastnameTextBox.Text ="";
        DOBTextBox.Text ="";
        PhonenumTextBox.Text ="";
        EmailIDTextBox.Text = "";
        AddressTextBox.Text = "";
        GenderDropDownList.SelectedIndex = -1;
    }

}
    
