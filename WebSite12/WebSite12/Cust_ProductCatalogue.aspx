<%@ Page Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Cust_ProductCatalogue.aspx.cs" Inherits="Cust_ProductCatalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="CSS/cat.css"/>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div class="container">
        <div class="wrap">
    <div class="menu">
        <div class="mini-menu">
            <ul>
        <li class="sub">
            <a href="Cust_ProductCatalogue.aspx?Category=MEN">MEN</a>
            <ul>
               <li><a href="Cust_ProductCatalogue.aspx?Category=MEN&Type=LIFESTYLE">Lifestyle</a></li>
              <li><a href="Cust_ProductCatalogue.aspx?Category=MEN&Type=RUNNING">Running & Training</a></li>

            </ul>
        </li>
        <li class="sub">
            <a href="Cust_ProductCatalogue.aspx?Category=WOMEN">WOMEN</a>
            <ul>
              <li><a href="Cust_ProductCatalogue.aspx?Category=WOMEN&Type=LIFESTYLE">Lifestyle</a></li>
              <li><a href="Cust_ProductCatalogue.aspx?Category=WOMEN&Type=RUNNING">Running & Training</a></li>
            </ul>
        </li>
    </ul>
        </div>

        <div class="menu-price menu-item">
            <div class="header-item" >Price</div>
            <p>
                <!--<label for="amount">Price range:</label>-->
                <input type="text" readonly id="amount"  style="border:0; color:#f6931f; font-weight:bold;">
            </p>
            <div id="slider-range"></div>
        </div>
        
    </div>

    <div class="items">
        
  <div class="items">
      <%
           string category = Request.QueryString["Category"];
            string type = Request.QueryString["Type"];
            ProductModel productmodel = new ProductModel();
            List<Product> products = null;

            if (category == null)
            {
                products = productmodel.GetAllProducts();
            }
            else if(type != null)
            {
                products = productmodel.GetitemsByType(type);
              
            }
            else
            {
                if (type == null)
                {
                    products = productmodel.GetitemsByCategory(category);
                }
                else
                {
                    products = productmodel.GetitemsByTypeCategory(type, category);
                  
                }

            }

          foreach (Product product in products)
          {
				%>     
      <a href="Cust_ProductDesc.aspx?id=<%=product.ProductID%>">
        <div data-price="<%=product.ProductPrice%>" class="item">
            <img src="Upload/<%=product.Product_Image_Name1%>" class="cat img-item"></img>
                <div class="info">
                    <h3><%=product.ProductName%></h3>
                    <p class="descroption"><%=product.ProductDescp%></p>
                    <h5>$<%=product.ProductPrice%></h5>
                </div>
        </div>
       </a>
      <%} %> 

      </div>
 <button class="loadmore">Load More</button>
    </div>
</div>

<script type="text/javascript"
>
    $(document).ready(function () {
        $("na")
    })
</script>    <!--Menu-->
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
<script src="script.js" ></script>
</div>
<script>
    $(function () {
        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 1000,
            values: [190, 728],
            slide: function (event, ui) {
                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                var mi = ui.values[0];
                var mx = ui.values[1];
                filterSystem(mi, mx);
            }
        });
        $("#amount").val("$" + $("#slider-range").slider("values", 0) +
            " - $" + $("#slider-range").slider("values", 1));
    });

    function filterSystem(minPrice, maxPrice) {
        $(".items div.item").hide().filter(function () {
            var price = parseInt($(this).data("price"), 10);
            return price >= minPrice && price <= maxPrice;
        }).show();
    }

    </script>
</asp:Content>