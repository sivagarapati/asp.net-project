<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="UploadAssignment.aspx.cs" Inherits="Student_UploadAssignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        td {
            height: 50px;
            width: 300px;
            padding: 2px 3px 4px 5px;
            margin: 2px 2px 2px 5px;
            text-align: center;
            border: 1px solid red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>
    <center>
    <div id="container">
        <h4>Upload Assignment</h4>
        <table>
            <tr>
                <td>Assignment Name :</td>
                <td>
                    <asp:DropDownList ID="AsgNameDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="AssignmentName" DataValueField="AssignmentName" Height="36px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Professor Name:</td>
                <td>
                    <asp:DropDownList ID="ProfNameDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProfessorName" DataValueField="ProfessorName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProfessorName], [AssignmentName] FROM [Add_Assignment]"></asp:SqlDataSource>

                </td>
            </tr>
            <tr>
                <td>Upload:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" required="required" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

        <br />
        <asp:Label ID="MsgLabel" runat="server" ForeColor="Red"></asp:Label>

    </div>
        </center>
    <br />
    <br />
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

