<%@ Page Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Cust_ProductDesc.aspx.cs" Inherits="Cust_ProductDesc" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">--%>

	<title>Default Template</title>
   
     
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	 <link rel="stylesheet" href="header/assets/demo.css"/>
	 <link rel="stylesheet" href="header/assets/header-search.css"/>
	 <link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'/>
     <link rel="stylesheet" href="FOOTER/css/demo.css"/>
	 <link rel="stylesheet" href="FOOTER/css/footer-distributed.css"/>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css" />


     <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
     <script src="script.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link type="text/css" rel="stylesheet" href="styles.css"/>
   <link type="text/css" rel="stylesheet" href="Styles/productdescp.css" />
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
    <div class="container">

          <%
              if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
              {
                  int id = Convert.ToInt32(Request.QueryString["id"]);
                  ProductModel productmodel = new ProductModel();
                  Product products = productmodel.GetProduct(id);



				%> 
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="Upload/<%=products.Product_Image_Name1%>" /></div>
						  <div class="tab-pane" id="pic-2"><img src="Upload/<%=products.Product_Image_Name2%>" /></div>
						  <div class="tab-pane" id="pic-3"><img src="Upload/<%=products.Product_Image_Name3%>" /></div>
						  <div class="tab-pane" id="pic-4"><img src="Upload/<%=products.Product_Image_Name4%>" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="Upload/<%=products.Product_Image_Name1%>" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="Upload/<%=products.Product_Image_Name2%>" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="Upload/<%=products.Product_Image_Name3%>" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="Upload/<%=products.Product_Image_Name4%>" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title"><%=products.ProductName%></h3>
                        <h2 class="h21"><%=products.ProductCategory + products.ProductType%></h2>
						<div class="rating">
							<%--<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
							</div>
							<span class="review-no">41 reviews</span>--%>
						</div>
						<p class="product-description"><%=products.ProductDescp%></p>
						<h4 class="price">Price: <span><%=products.ProductPrice%></span></h4>
                        <h4 class="price">Size available: <span><%=products.ProductSize%></span></h4>
						<%--<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>--%>
                        <div class="anu">
                        
						 <div class="dropdown" style="padding-right:10px; padding-top:7px">
                            <button class="add-to-cart btn btn-default dropdown-toggle fuck" type="button" data-toggle="dropdown" style="background: #6c8886;">Quantity
                            <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                            </ul>
                         
                            </div>
                            <script type="text/javascript">
                                $(".dropdown-menu li a").click(function () {

                                    $(".fuck:first-child").html($(this).text() + ' <span class="caret"></span>');

                                });
                            </script>

                            <div class="action action1">
                                <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" class="like btn btn-default"/>
                                
                                <button class="like btn btn-default" type="button"><span class="fa fa-heart"></button>
	

						</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
     <%}
          %> 
  

    



  <script type="text/javascript">
      $(document).ready(function () {
          $(".sub > a").click(function () {
              var ul = $(this).next(),
                  clone = ul.clone().css({ "height": "auto" }).appendTo(".mini-menu"),
                  height = ul.css("height") === "0px" ? ul[0].scrollHeight + "px" : "0px";
              clone.remove();
              ul.animate({ "height": height });
              return false;
          });
          $('.mini-menu > ul > li > a').click(function () {
              $('.sub a').removeClass('active');
              $(this).addClass('active');
          }),
              $('.sub ul li a').click(function () {
                  $('.sub ul li a').removeClass('active');
                  $(this).addClass('active');
              });
      });
</script>
           </form> 
    </span> 
</asp:Content>