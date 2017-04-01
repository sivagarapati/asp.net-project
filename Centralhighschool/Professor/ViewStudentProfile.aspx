<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMasterPage.master" AutoEventWireup="true" CodeFile="ViewStudentProfile.aspx.cs" Inherits="Professor_ViewStudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>Welcome
        <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label></h3>

    <div id="container2">
        <h4>View Student profile</h4>
        <p>&nbsp;</p>
    </div>
    <center>
    <div class="table">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="AccountType" HeaderText="AccountType" SortExpression="AccountType" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Dob" HeaderText="Dob" DataFormatString="{0:d}" SortExpression="Dob" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Registration] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Registration] ([AccountType], [FirstName], [Lastname], [Dob], [Gender], [PhoneNumber], [address], [EmailID], [Password]) VALUES (@AccountType, @FirstName, @Lastname, @Dob, @Gender, @PhoneNumber, @address, @EmailID, @Password)" SelectCommand="SELECT * FROM [Registration] WHERE ([AccountType] = @AccountType)" UpdateCommand="UPDATE [Registration] SET [AccountType] = @AccountType, [FirstName] = @FirstName, [Lastname] = @Lastname, [Dob] = @Dob, [Gender] = @Gender, [PhoneNumber] = @PhoneNumber, [address] = @address, [EmailID] = @EmailID, [Password] = @Password WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AccountType" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Dob" Type="DateTime" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Student" Name="AccountType" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="AccountType" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Dob" Type="DateTime" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        </center>
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>
