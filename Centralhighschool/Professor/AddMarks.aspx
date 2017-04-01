<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMasterPage.master" AutoEventWireup="true" CodeFile="AddMarks.aspx.cs" Inherits="Professor_Uploadmarks" %>


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
    <div id="Contianer">
        <h4>Add marks</h4>
        Student Name:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="ID" required="required;">
            </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ID, FirstName, Lastname FROM Registration WHERE (AccountType = @AccountType)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Student" Name="AccountType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <center>
        <table>
            <tr>
                <td>Subject 1: 
                    <asp:TextBox ID="Subject1TextBox" runat="server" placeholder="enter Sudject1 Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Subject1TextBox" ErrorMessage="Subj 1 name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>Marks1: 
                    <asp:TextBox ID="Subj1MarkTextBox" runat="server" Placeholder="enter Subject 1 marks" TextMode="Number" MinValue="0" Maxvalue="100"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Subj1MarkTextBox" ErrorMessage="Marks Range between &quot;0 to 100&quot;" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Subj1MarkTextBox" ErrorMessage="Subj1 Marks Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Subject 2: 
                    <asp:TextBox ID="Subject2TextBox" runat="server" placeholder="enter Sudject2 Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Subject2TextBox" ErrorMessage="Subj 2 Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>Marks 2:
                    <asp:TextBox ID="Subj2MarkTextBox" runat="server" Placeholder="enter Subject 2 marks" TextMode="Number"></asp:TextBox>                    
                   <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Subj2MarkTextBox" ErrorMessage="Marks Range between &quot;0 to 100&quot;" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Subj2MarkTextBox" ErrorMessage="Subj 2 marks required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Subject 3: 
                    <asp:TextBox ID="Subject3TextBox" runat="server" placeholder="enter Sudject3 Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Subject3TextBox" ErrorMessage="Subj 3 name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>Marks 3:
                    <asp:TextBox ID="Subj3MarkTextBox" runat="server" Placeholder="enter Subject 3 marks" TextMode="Number"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Subj3MarkTextBox" ErrorMessage="Marks Range between &quot;0 to 100&quot;" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Subj3MarkTextBox" ErrorMessage="Subj 3 marks required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Subject 4: 
                    <asp:TextBox ID="Subject4TextBox" runat="server" placeholder="enter Sudject4 Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Subject4TextBox" ErrorMessage="Subj 4 name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>Marks 4:
                    <asp:TextBox ID="Subj4MarkTextBox" runat="server" Placeholder="enter Subject 4 marks" TextMode="Number"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="Subj4MarkTextBox" ErrorMessage="Marks Range between &quot;0 to 100&quot;" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Subj4MarkTextBox" ErrorMessage="Subj 4 marks required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Subject 5: 
                    <asp:TextBox ID="Subject5TextBox" runat="server" placeholder="enter Sudject5 Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Subject5TextBox" ErrorMessage="Subj 5 Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>Marks 5:
                    <asp:TextBox ID="Subj5MarkTextBox" runat="server" Placeholder="enter Subject 5 marks" TextMode="Number"></asp:TextBox>
                   <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="Subj5MarkTextBox" ErrorMessage="Marks Range between &quot;0 to 100&quot;" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Subj5MarkTextBox" ErrorMessage="Subj 5 marks required" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
                <td>Subject 6: 
                    <asp:TextBox ID="Subject6TextBox" runat="server" placeholder="enter Sudject6 Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Subject6TextBox" ErrorMessage="Subj 6 Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>Marks 6:
                    <asp:TextBox ID="Subj6MarkTextBox" runat="server" Placeholder="enter Subject 6 marks" TextMode="Number"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="Subj6MarkTextBox" ErrorMessage="Marks Range between &quot;0 to 100&quot;" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Subj6MarkTextBox" ErrorMessage="Subj 6 marks required" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
                </td>
            </tr>
            <tr>
                <td>Total Marks :
                <asp:TextBox ID="TotalTextBox" runat="server"></asp:TextBox>
                </td>
                <td>Precentage :
            <asp:TextBox ID="PrecentageTextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Grade :
                <asp:TextBox ID="GradeTextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                </td>
                <td>
                    <asp:Button ID="ClearButton1" runat="server" Text="Clear"  OnClick="ClearButton1_Click" style="height: 27px" CausesValidation="False" />
                </td>
            </tr>
        </table>
            </center>
        <p>
            <asp:Label ID="MsgLabel" runat="server"></asp:Label>

        </p>
    </div>
    <div class="footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="../homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

