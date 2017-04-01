<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="ViewMarks.aspx.cs" Inherits="Student_ViewMarks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        td {
            height: 50px;
            width: 300px;
            padding: 2px 3px 4px 5px;
            margin: 2px 2px 2px 5px;
            border: 1px solid red;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>
    <center>
    <div id="container">
        <h4>View marks</h4>
        <p>&nbsp;</p>
        <table border="1" width="60%">
            <tr>
                <td class="auto-style2">Subject 1: 
                    <asp:TextBox ID="subj1TextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    Marks 1:
                    <asp:TextBox ID="Subj1markTextBox" runat="server" Placeholder=" Subject 1 marks" required="required" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Subject 2: 
                    <asp:TextBox ID="subj2TextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    Marks 2:
                    <asp:TextBox ID="Subj2markTextBox" runat="server" Placeholder="Subject 2 marks" required="required" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Subject 3: 
                    <asp:TextBox ID="subj3TextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    Marks 3:
                    <asp:TextBox ID="Subj3markTextBox" runat="server" Placeholder="Subject 3 marks" required="required" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Subject 4: 
                    <asp:TextBox ID="subj4TextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    Marks 4:
                    <asp:TextBox ID="Subj4markTextBox" runat="server" Placeholder="Subject 4 marks" required="required" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Subject 5: 
                    <asp:TextBox ID="subj5TextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    Marks 5:
                    <asp:TextBox ID="Subj5markTextBox" runat="server" Placeholder="Subject 5 marks" required="required" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Subject 6: 
                    <asp:TextBox ID="subj6TextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    Marks 6:
                    <asp:TextBox ID="Subj6markTextBox" runat="server" Placeholder="Subject 6 marks" required="required" TextMode="Number"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        Total Marks :&nbsp;
                <asp:TextBox ID="TotalTextBox" runat="server"></asp:TextBox>
        Precentage :
            <asp:TextBox ID="PrecentageTextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grade :
                <asp:TextBox ID="GradeTextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
    </div>
    </center>

    <br />
    <br />
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

