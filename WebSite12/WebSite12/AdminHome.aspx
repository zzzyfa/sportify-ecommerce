<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
        <title>Default Template</title>
    <link rel="stylesheet" href="ContactUsCSS.css" />
   
     
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="header/assets/header-search.css" />
    <link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="FOOTER/css/demo.css" />
    <link rel="stylesheet" href="FOOTER/css/footer-distributed.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />


    <link type="text/css" rel="stylesheet" href="styles.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/adminhome.css" />
 
</head>

<body runat="server">
     <form runat="server">
<!-- HEADER -->
       
        <div class="header-search hdr">
            <div class="header-limiter">
                <h1><a href="Cust_Home.aspx"></a>
                    <img src="\MENU-BRANDS-LOGOS\sport.png" /></h1>
                <nav>
                    <a href="Cust_Log.aspx">Login</a>
                    <a href="Cust_Reg.aspx">Sign Up</a>
                </nav>
            </div>
        </div>

        <div id="cssmenu" class="navigations">
            <ul>
                <li style="margin-left: 150px">
                    <a href="#">HOME</a>
                </li>
                <li class='has-sub'>
                    <a href="#">VIEW CUSTOMERS</a>
                    
                </li>
                <li class='has-sub'>
                    <a href="#">VIEW PRODUCTS</a>
                </li>
                <li class='last'><a href="#"><span>ADD PRODUCTS</span></a></li>
            </ul>
        </div>


    <div class="container">
	<div class="row">
    <h1 class="logo">
       <span class="char1">S</span>
       <span class="char2">P</span>
       <span class="char3">O</span>
       <span class="char4">R</span>
       <span class="char5">T</span>
      <span class="char6">I</span>
       <span class="char4">F</span>
       <span class="char3">Y</span>
   </h1>
            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                <div class="input-append span12">
                    <input type="text" class="search-query mac-style" placeholder="Search"/>
                    <button type="submit" class="btn"><i class="icon-search"></i></button>
                </div>
            </form>
        </div>
	</div>

    


<div class="footer-distributed ftr">
            <div class="footer-right">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-github"></i></a>
            </div>
            <div class="footer-left">
                <ul class="footer-links">
                    <a href="Cust_Home.aspx">Home</a>
                    <a href="AboutUs.aspx">About</a>
                    <a href="#">Faq</a>
                    <a href="#">Contact</a>
                </ul>
                <p>Sportify Inc. &copy; 2017</p>
            </div>
        </div>
    
<!-- END OF FOOTER-->
</form>
</body>
  
</html>