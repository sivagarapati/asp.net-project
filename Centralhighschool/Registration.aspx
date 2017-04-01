<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <style type="text/css">
        td {
            height: 50px;
            width: 300px;
            padding: 2px 3px 4px 5px;
            margin: 2px 2px 2px 5px;
            text-align: center;
        }
            .auto-style2 {
                height: 50px;
            }
    </style>
    <h3>Registration page</h3>
    <center>
    <div id="registration" class="registration">
        <table>
            <tr>
                <td>Account type:</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem>Professor</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredField" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>FirstName :</td>
                <td>
                    <asp:TextBox ID="FirstnameTextBox" runat="server" placeholder="Enter FristName"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="FirstNameRequired" ControlToValidate="FirstnameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>LastName:</td>
                <td>
                    <asp:TextBox ID="LastnameTextBox" runat="server" placeholder="Enter LastName"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="lastNameRequired" ControlToValidate="LastnameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Date of Birth:</td>
                <td>
                     <asp:TextBox ID="DOBTextBox" runat="server" TextMode="Date" placeholder="Enter Date of Birth"></asp:TextBox>
                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DOBTextBox" ErrorMessage="select valid date" ForeColor="Red" Type="Date"></asp:RangeValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="DoBRequired" ControlToValidate="DOBTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <asp:DropDownList ID="GenderDropDownList" InitialValue="0" runat="server">
                        <asp:ListItem Text="-Select-" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Male"></asp:ListItem>
                        <asp:ListItem Text="Female"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="GenderDropDownList" ErrorMessage="GenderRequired" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td>
                    <asp:TextBox ID="PhonenumTextBox" runat="server" TextMode="Phone"  placeholder="Enter PhoneNumber" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="PhoneNumberRequired" ControlToValidate="PhonenumTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PhonenumTextBox" ErrorMessage="Enter Valid Phone Number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="AddressTextBox" runat="server" TextMode="MultiLine" placeholder="Enter Address"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="AddressTextBox" ErrorMessage="AddressRequired" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email id:</td>
                <td>
                    <asp:TextBox ID="EmailIDTextBox" runat="server" TextMode="Email" placeholder="Enter Email ID" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="EmailIDTextBox" ErrorMessage="EmailIDRequired" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Create Password :</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"  placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="PasswordRequired" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Re-Enter Password:</td>
                <td>
                    <asp:TextBox ID="ReenterTextBox" runat="server" TextMode="Password"  placeholder="Confirm Password" ></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Must Match" ControlToCompare="PasswordTextBox" ForeColor="Red" ControlToValidate="ReenterTextBox"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ReenterTextBox" ErrorMessage="Re-enter Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="CreateaAccountButton" runat="server" Text="Create Account" OnClick="CreateaAccountButton_Click" />
                </td>
                <td>
                    <asp:Button ID="ClearButton1" runat="server" Text="Clear" Width="87px" OnClick="ClearButton1_Click" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="msgLabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
        </center>
    <div id="Footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="homepage.aspx">"Central High School"</a>
    </div>
</asp:Content>

