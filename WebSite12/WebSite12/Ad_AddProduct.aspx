 <%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_AddProduct.aspx.cs" Inherits="Add_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Product</title>
    <link rel="stylesheet" type="text/css" href="CSS/adminadd.css" />

    <title></title>
    <link rel="stylesheet" href="ContactUsCSS.css" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <link rel="stylesheet" href="header/assets/header-search.css" />
    <link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="FOOTER/css/demo.css" />
    <link rel="stylesheet" href="FOOTER/css/footer-distributed.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />


    <link type="text/css" rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" type="text/css" href="CSS/adminadd.css" />
    <script src="Scripts/jscolor.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" enctype="multipart/form-data" runat="server">
        <!-- HEADER -->
        <div class="container1">
            <fieldset>
                <div id="legend">
                </div>
                <legend class="">ADD PRODUCTS</legend>



                    <div class="form-group">
                        <label for="filter">PRODUCT CATEGORY</label>
                        <select class="form-control" name="productcategory" required>
                            <option value="" selected></option>
                            <option value="MEN">MEN</option>
                            <option value="WOMEN">WOMEN</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="filter">PRODUCT TYPE</label>
                        <select class="form-control" name="producttype" required>
                            <option value="" selected></option>
                            <option value="LIFESTYLE">LIFESTYLE</option>
                            <option value="RUNNING">RUNNING & TRAINING</option>
                        </select>
                        <%--<asp:DropDownList ID="ddtype" name="ddtype" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustProductEntities %>" SelectCommand="SELECT [Name] FROM [ProductType] ORDER BY [Name]"></asp:SqlDataSource>--%>
                    </div>
                    <div class="control-group">
                        <!-- PRODUCT NAME -->
                        <label class="control-label" for="productname">PRODUCT NAME</label>
                        <div class="controls">
                            <input type="text" id="productname" name="productname" placeholder="" class="input-xlarge" required/>

                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Product Description -->
                        <label class="control-label" for="productdescription">PRODUCT DESCRIPTION</label>
                        <div class="controls">
                            <textarea id="productdescp" placeholder="" class="input-xlarge" cols="20" rows="2" name="productdescp" required></textarea>

                        </div>
                    </div>

                    <div class="control-group" id="shoesize" class="shoesz">
                        <label for="filter">PRODUCT SIZE</label>
                       <select class="form-control" name="productsize" required>
                            <option value="" selected></option>
                            <option value="36">36</option>
                            <option value="37">37</option>
                            <option value="38">38</option>
                            <option value="39">39</option>
                           <option value="40">40</option>
                        </select>
                       <%-- <asp:DropDownList ID="ddsize" runat="server" DataSourceID="SqlDataSource3" name="ddsize" DataTextField="ProductSize" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CustProductEntities %>" SelectCommand="SELECT * FROM [ProductSize] ORDER BY [ProductSize]"></asp:SqlDataSource>--%>
                       
                    </div>

                    <div class="control-group">
                        <!-- PRODUCT PRICE -->
                        <label class="control-label" for="productname">PRODUCT PRICE</label>
                        <div class="controls">
                            <input type="number" id="productprice" name="productprice" placeholder="" class="input-xlarge" required/>

                        </div>
                    </div>
                    <div class="control-group">
                        <!--Product Pic-->
                        <label class="control-label" for="productpic">Upload Product Picture</label>
                        <div class="controls">
                            <asp:FileUpload ID="productpic1" runat="server" text="Upload a photo" method="post" enctype="multipart/form-data" name="productpic1" required/>
                             <asp:FileUpload ID="productpic2" runat="server" text="Upload a photo" method="post" enctype="multipart/form-data" name="productpic2" required/>
                             <asp:FileUpload ID="productpic3" runat="server" text="Upload a photo" method="post" enctype="multipart/form-data" name="productpic3" required/>
                             <asp:FileUpload ID="productpic4" runat="server" text="Upload a photo" method="post" enctype="multipart/form-data" name="productpic4" required/>
                        </div>
                        <asp:Label ID="uploadinfo" runat="server"></asp:Label>
                    </div>
             


                <asp:Label ID="LblResult" runat="server"></asp:Label>



                <div class="reset">
                    <asp:Button class="btn btn-success" runat="server" ID="btnaddproduct" Text="Add Product" Height="45px" Width="150px" OnClick="btnaddproduct_Click" />
                </div>
                <div class="reset">
                    <asp:Button class="btn btn-success" runat="server" ID="btnreset" Text="Reset" Height="45px" Width="150px" />
                </div>
            </fieldset>
        </div>







        <!-- END OF FOOTER-->
    </form>
</asp:Content>