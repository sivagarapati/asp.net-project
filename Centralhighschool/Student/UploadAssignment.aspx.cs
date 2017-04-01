using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Student_UploadAssignment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UsernameLabel.Text = Session["username"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filepath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filepath);
        string ext = Path.GetExtension(filename);
        string contenttype = string.Empty;
        switch (ext)
        {
            case ".doc":
                contenttype = "application/vnd.ms-word";
                break;
            case ".docx":
                contenttype = "application/vnd.ms-word";
                break;
            case ".pdf":
                contenttype = "application/pdf";
                break;
            case ".txt":
                contenttype = "application/text";
                break;
        }
        if (contenttype != String.Empty)
        {
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string connectionstring = "Data Source = SIVAKUMAR; Database = Highschool; Integrated Security = True;";
            SqlConnection con = new SqlConnection(connectionstring);
            string Qry = "Insert into Upload_Assignment (ProfessorName,AssignmentName,AssignmentFile,Filename,Filetype) Values (@ProfessorName,@AssignmentName,@AssignmentFile,@Filename,@Filetype)";
            SqlCommand cmd = new SqlCommand(Qry, con);
            cmd.Parameters.AddWithValue("@ProfessorName", ProfNameDropDownList.Text);
            cmd.Parameters.AddWithValue("@AssignmentName", AsgNameDropDownList.Text);
            cmd.Parameters.AddWithValue("@AssignmentFile", bytes);
            cmd.Parameters.AddWithValue("@FileName", filename);
            cmd.Parameters.AddWithValue("@Filetype", contenttype);
            FileUpload1.SaveAs(Server.MapPath("../Uploads/" + FileUpload1.FileName));
            int added = 0;
            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                MsgLabel.Text = "Assignment uploaded successfully";
            }
            catch (Exception err)
            {
                MsgLabel.Text = "Error inserting record. ";
                MsgLabel.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}