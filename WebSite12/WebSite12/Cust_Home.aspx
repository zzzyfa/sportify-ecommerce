<%@ Page Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Cust_Home.aspx.cs" Inherits="Cust_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
     <script src="script.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></scr<a href="Cust_Home.aspx">Cust_Home.aspx</a>ipt>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="styles.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div class="container">
  <h2>Hot Brands</h2>  
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
        <img src="MENU-BRANDS-LOGOS/nike_mercurial_960x425_r1.jpg" alt="Los Angeles" style="width:100%;height:400px">
      </div>

      <div class="item">
        <img src="MENU-BRANDS-LOGOS/ADIDAS-SOCIAL-TWITTER-1500X500-NEMEZIZ-STADIUM-P0-08MAY2017-e1495659879116.jpg" alt="Chicago" style="width:100%; height:400px">
      </div>
    
      <div class="item">
        <img src="MENU-BRANDS-LOGOS/original_181684_tQvar6SYR99OYB3cCWV9EsKFJ.png" alt="New york" style="width:100%;height:400px">
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
</div>

<div class="w3-content w3-padding" style="max-width:1564px">

  
</div>


    </asp:Content>