<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_Home.aspx.cs" Inherits="Ad_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>

    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="styles.css" />

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   

        <div class="container">
  <h2>Admin Functions</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <a href="Ad_ViewAllItems.aspx"><img src="MENU-BRANDS-LOGOS/1.png"
            alt="Los Angeles" style="width:100%;height:400px;"/></a>
      </div>

      <div class="item">
        <a href="Ad_ViewAllCust.aspx"><img src="MENU-BRANDS-LOGOS/2.png" alt="Chicago" style="width:100%; height:400px"/></a>
      </div>
    
      <div class="item">
        <a href="Ad_ViewAllOrders.aspx"><img src="MENU-BRANDS-LOGOS/3.png" alt="New york" style="width:100%;height:400px"/></a>
      </div>

        <div class="item">
        <a href="Ad_ViewAllFeedback.aspx"><img src="MENU-BRANDS-LOGOS/4.png" alt="New york" style="width:100%;height:400px"/></a>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
            <br />

</div>





</asp:Content>
