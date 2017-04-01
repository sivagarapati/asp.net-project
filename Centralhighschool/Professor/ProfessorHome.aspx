<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMasterPage.master" AutoEventWireup="true" CodeFile="ProfessorHome.aspx.cs" Inherits="Professor_StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 300px;
            height: 284px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>
    <div id="container">
        <h4>Professor Home</h4>
        <p>
            <img alt="prof" class="auto-style2" src="../Images/prof.jpg" />
        </p>

    </div>
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

