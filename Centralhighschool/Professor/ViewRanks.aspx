<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMasterPage.master" AutoEventWireup="true" CodeFile="ViewRanks.aspx.cs" Inherits="Professor_Ranks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        th, td {
            border: 1px solid red;
            padding: 1px 1px 1px 1px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>
    <center>
    <div id="container">
        <h4>View Ranks</h4>
        <p>&nbsp;</p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="totalmarks" HeaderText="totalmarks" SortExpression="totalmarks" />
                <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Ranks" HeaderText="Ranks" SortExpression="Ranks" />
            </Columns>
        </asp:GridView>
    </div>
    </center>
    <br />
    <br />
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

