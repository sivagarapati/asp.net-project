<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMasterPage.master" AutoEventWireup="true" CodeFile="ProfessorProfile.aspx.cs" Inherits="Professor_ProfessorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>
    <div id="container">
        <h4>Professor Profile</h4>
        <p>&nbsp;</p>
        <p>
            &nbsp;FristName :
        <asp:TextBox ID="FristnameTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            LastName:
            <asp:TextBox ID="LastnameTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            Date of Birth:&nbsp;
        <asp:TextBox ID="DOBTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            Gender:&nbsp;
            <asp:TextBox ID="GenderTextBox" runat="server"></asp:TextBox>

        </p>
        <p>
            Phone Number:
        <asp:TextBox ID="PhonenumTextBox" runat="server"></asp:TextBox>

        </p>
        <p class="text-center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
        </p>
        <p class="text-center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Email id:
            <asp:TextBox ID="EmailIDTextBox" runat="server"></asp:TextBox>
        </p>
        <p>&nbsp;</p>
    </div>
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

