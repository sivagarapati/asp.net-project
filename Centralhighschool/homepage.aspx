<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="style/Style.css" rel="stylesheet" />
    <link href="style/bootstrap.css" rel="stylesheet" />
    <div class="page-content">

        <h1 style="color: red; text-align: center; font-size: 30px;">Welcome to Central High School Home</h1>
        <p>
            <b>Our Mission</b> CHS is a personalized learning community that respects individuality, encourages 
                    independent thinking, and values creativity in all disciplines.
        </p>
        <p>
            <b>CHS</b> goes beyond traditional school and creates a supportive and nurturing community. 
                    Students are encouraged to participate, problem solve, think creatively, try new things, and incorporate
                     things like individual self expression into their curriculum and daily lives. 
                    Teenagers become aware of the world that stretches far beyond their classroom and where they live.
        </p>
        <p>
            The opportunity offered to high school students at CHS is unlike anything offered in the Kansas City area. 
                    Explore the Core Curriculum and Electives listed below to learn more about the unique education experience at CHS.
        </p>
        <div class="container">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <asp:Image ID="Image1" Height="300px" Width="1050px" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>

            <br />

        </div>
    </div>
    <div id="Footer" style="background-color:lightskyblue; color: black; padding: 10px; position:relative;">
    Copyrights &copy 2016 <a href="homepage.aspx">"Central High School"</a>
</div>
</asp:Content>

