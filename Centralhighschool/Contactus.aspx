<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Contactus Page</h3>
    <p>&nbsp;</p>
    
    <p>Name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="NameTextBox" runat="server" placeholder="Enter Name" required="required"></asp:TextBox>
    </p>
       
    <p>Email ID:&nbsp;&nbsp;
        <asp:TextBox ID="EmailIDTextBox" runat="server" TextMode="Email" placeholder="Enter EmailID" required="required"></asp:TextBox>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone Number: <asp:TextBox ID="PhonenumTextBox" runat="server" TextMode="Phone" placeholder="Enter PhoneNumber" required="required"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhonenumTextBox" ErrorMessage="Enter Valid US Phone Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
    </p>
    <p>Message:
        <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" Placeholder="Enter Your Message" required="required"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
    </p>


    <p>
        <asp:Label ID="MsgLabel" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <br />
    <div id="Footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

