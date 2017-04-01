<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMasterPage.master" AutoEventWireup="true" CodeFile="AddAssignment.aspx.cs" Inherits="Professor_UploadAssignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>
    <div id="container">
        <h4>Add Assignment</h4>
        Department Name :
        <asp:TextBox ID="TextBox1" runat="server" placeholder="enter the Department name" required="required"></asp:TextBox>
        <br />
        <br />
        Professor name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT FirstName, Lastname FROM Registration WHERE (AccountType = @AccountType)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Professor" Name="AccountType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Assignment Name:
        <asp:TextBox ID="TextBox3" runat="server" placeholder="enter the Assignment name" required="required"></asp:TextBox>
        <br />
        <br />
        Assignment Date :
        <asp:TextBox ID="TextBox4" runat="server" placeholder="enter the Assignment Date" required="required" TextMode="Date"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="dateRangeValidator" Type="Date"></asp:RangeValidator>
        <br />
        &nbsp;<p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add Assignment" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <asp:Label ID="MsgLabel" runat="server"></asp:Label>
        </p>
    </div>
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

