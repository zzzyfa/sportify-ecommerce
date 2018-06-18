<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="AboutUs - Copy.aspx.cs" Inherits="AboutUs___Copy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
     <link rel="stylesheet" href="ContactUsCSS.css" />
    </asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!--about-->
    <div><style scoped="scoped">
             @import "ContactUsCSS.css";
         </style>
    <div id="page-wrapper">
        <div id="page" class="container">
            <div id="content">
                <div class="title">
                    <h2 style="font-size:2.3em">ABOUT US</h2>
                    <span class="byline" style="font-size:1.6em">Where Fitness Meets Fashion</span>
                </div>
                <p style="font-size:1.2em">This is <strong>SPORTIFY</strong>, Malaysia's sporting good retailer, operating a diversified portfolio of sports, fitness, fashion and lifestyle fascias and brands. We aspire to be a leading sports and lifestyle retailer internationally and to deliver sustainable growth for our shareholders in the medium to long term by offering our customers an unrivalled range of high quality leading brands. </p>
            </div>
            <div id="sidebar"><a href="#" class="image image-full">
                <img src="MENU-BRANDS-LOGOS/retail2.jpg" alt="" height="230px" style="margin-left:50px; margin-top:20px;"/></a></div>
        </div>
    </div>

    <!--features-->
    <div id="featured-wrapper">
        <div id="featured" class="container">
            <div class="major">
                <h2 style="font-size:2.3em">WHAT WE OFFER</h2>
                <span class="byline" style="font-size:1.6em">Aside from Quality Products, We Have More Perks for You!</span>
            </div>
             <div class="column1">
                <span class="icon icon-picture" style="height:200px"><img src="MENU-BRANDS-LOGOS/freedeliv.png" height="200px"/></span>
                <div class="title">
                    <h2 style="font-size:1.8em">FREE DELIVERY ABOVE RM100</h2>
                    <span class="byline" style="font-size:1.2em">No delivery fee for purchases above RM100</span>
                </div>
            </div>
            <div class="column2">
                <span class="icon icon-qrcode" style="height:200px; top: 0px; left: 0px;"><img src="MENU-BRANDS-LOGOS/cash2.png" height="200px" /></span>
                <div class="title">
                    <h2 style="font-size:1.8em">CASH ON DELIVERY</h2>
                    <span class="byline" style="font-size:1.2em">Don't have a payment card? You can pay by cash on delivery</span>
                </div>
            </div>
            <div class="column3">
                <span class="icon icon-building" style="height:200px"><img src="MENU-BRANDS-LOGOS/return.png" height="180px" /></span>
                <div class="title">
                    <h2 style="font-size:1.8em">30 DAYS FREE RETURNS</h2>
                    <span class="byline" style="font-size:1.2em">You can return the items within 30 days for free if you are unsatisfied</span>
                </div>
            </div>
           
        </div>
    </div>


    <!--contact-->
    <div id="footer">
    <div id="form-main">
        <div class="major" style="margin-bottom:2em; margin-top:2em">
                <h2 style="margin-top:20px; font-size:2.5em;">CONTACT US</h2>
                <span class="byline">Questions? Feedback? Drop by here.</span>
            </div>
        <div id="form-div">
            <form class="form" id="form1" runat="server">

                <p class="name">
                    <asp:TextBox ID="name" runat="server" name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name"></asp:TextBox>
                </p>

                <p class="email">
                    <asp:TextBox ID="email" runat="server" name="email" type="text" class="validate[required,custom[email]] feedback-input" placeholder="Email"></asp:TextBox>
                </p>

                <p class="text">
                    <textarea id="comment" cols="20" rows="2" name="text" runat="server" class="validate[required,length[6,300]] feedback-input" placeholder="Message"></textarea>
                </p>

                <div class="submit">
                    <asp:Button  ID="btnSend" runat="server" Text="SEND" type="submit" class="button-blue"  OnClick="btnSend_Click"/>
                    <div class="ease"></div>
                  
                </div>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
            </form>
        </div>
    </div>
        </div>
</div>
   </asp:Content>


