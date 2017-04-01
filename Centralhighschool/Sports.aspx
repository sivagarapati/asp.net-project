<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sports.aspx.cs" Inherits="Sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            left: 786px;
            top: 1016px;
        }

        .auto-style3 {
            position: relative;
            left: -61px;
            top: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content">
        <div class="container">
            <h1 style="color: red; text-align: center; font-size: 30px;">Sports page</h1>
            <h3 style="color: red;">About Physical Education</h3>
            <div style="float: left; text-align:left; text-indent:60px;">
            <img src="Images/sports1.jpg" style="float:left; height: 250px; width: 400px; padding-right:10px;" />
               <p>CHS has well equipped games and sports department under charge of physical director.
                        CHS believes in a sound mind in sound body. Students are encouraged to play various
                        indoor and outdoor games and sports participation in competition is also encouraged.
                        CHS conducted tournaments and summer coaching camps in various games and sports.<br />
                </p>
                   <p>Planning to participate students in inters college;
                        inter university state and national level in different games and sports like Cricket, athletics.
                        Planning teams to train in professional way for facing competitions apart from college schedule
                        Planning in organizing tournaments in different sports and games.
                    </p>
            </div>

    

            <h3 style="color: red;">Aims and Objectives of the Department</h3>
            <ul style="text-align:left;">
                <li>To encourage sports men ship and to promote friendly relations among the various School departments</li>
                <li>To raise the standards of sports and prevailing in the Schools and to work for development of values through sports among students</li>
                <li>To organize tournaments in different sports and games every year</li>
                <li>To make participation in inter School, inter state and national level in different games and sports like Baseball, athletics</li>
            </ul>
            <p style="text-align: center; font-style: italic; border-radius: 8px;">
                <strong style="font-size: larger;">"Champions Playing Until they get it right...."</strong>
                <cite style="font-size: small;">-Billie Jean King, Tennis star.</cite>
            </p>
        </div>

    </div>

    <div id="Footer" style="background-color: lightskyblue; color: black; padding: 10px;">
        Copyrights &copy 2016 <a href="homepage.aspx">"Central High School"</a>
    </div>


</asp:Content>

