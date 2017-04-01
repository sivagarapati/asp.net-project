<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h3>&nbsp;&nbsp;&nbsp;&nbsp; Login page </h3>
        <p>&nbsp;</p>
        UserName:&nbsp;
        <asp:TextBox ID="UsernameTextBox" runat="server" required="required" placeholder="Enter UserName"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp;&nbsp;
    <asp:TextBox ID="PasswordTextBox" runat="server" required="required" TextMode="Password" requried="requried" placeholder="Enter password"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="LoginButton" runat="server" OnClick="Button1_Click" Text="LOGIN" />
        &nbsp; <a href="Registration.aspx"><span class="text-primary">Create New Account</span></a>
        <br />
        <br />
        <asp:Label ID="MsgLabel" runat="server" ForeColor="Red"></asp:Label>
        <br />
    </div>

    <div id="Footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

