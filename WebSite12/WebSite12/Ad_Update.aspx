<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_Update.aspx.cs" Inherits="Ad_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Product</title>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="forms" runat="server" enctype="multipart/form-data">
    <div class="container">
       
            <fieldset>
                <div id="legend">
                </div>
                <legend class="">UPDATE PRODUCT</legend>
                <asp:HiddenField ID="HiddenField_Id1" runat="server" OnValueChanged="HiddenField_Id_ValueChanged" />



                    <div class="form-group">
                        <label for="filter">PRODUCT CATEGORY</label>                        
                        <asp:DropDownList ID="productcategory" runat="server" >
                <asp:ListItem></asp:ListItem>
                            <asp:ListItem>MEN</asp:ListItem>
                <asp:ListItem>WOMEN</asp:ListItem>               
            </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="filter">PRODUCT TYPE</label>
                        
                        <asp:DropDownList ID="producttype" runat="server" >
                <asp:ListItem></asp:ListItem>
                            <asp:ListItem>LIFESTYLE</asp:ListItem>
                <asp:ListItem>RUNNING</asp:ListItem>               
                            <asp:ListItem>GYM & TRAINING</asp:ListItem>               
            </asp:DropDownList>
                    </div>
                    <div class="control-group">
                        <!-- PRODUCT NAME -->
                        <label class="control-label" for="productname">PRODUCT NAME</label>
                        <div class="controls">
                            <asp:TextBox ID="txtname" runat="server" class="input-xlarge"></asp:TextBox>
                            

                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Product Description -->
                        <label class="control-label" for="productdescription">PRODUCT DESCRIPTION</label>
                        <div class="controls">
                            <asp:TextBox ID="txtdescription" runat="server" class="input-xlarge" textmode="MultiLine" cols="20" Rows ="2"></asp:TextBox>

                        </div>
                    </div>

                   

                    <div class="control-group" id="shoesize" class="shoesz">
                        <label for="filter">PRODUCT SIZE</label>
                        
                        <asp:DropDownList ID="productsize" runat="server" >
                <asp:ListItem></asp:ListItem>
                            <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>37</asp:ListItem>               
                            <asp:ListItem>38</asp:ListItem>               
            </asp:DropDownList>
                    </div>

                    <div class="control-group">
                        <!-- PRODUCT PRICE -->
                        <label class="control-label" for="productprice">PRODUCT PRICE</label>
                        <div class="controls">
                            
                            <asp:TextBox ID="productprice" CssClass="input-xlarge" runat="server"></asp:TextBox>
                        </div>
                    </div>

                   
             

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductDescp], [ProductSize], [ProductCategory], [ProductPrice], [ProductType], [Product_Image_Name1] FROM [Product]"></asp:SqlDataSource>



                <div class="reset">
                    <asp:Button class="btn btn-success" runat="server" ID="btnupdateproduct" Text="Update Product" Height="45px" Width="150px" OnClick="btnaddproduct_Click" />
                </div>
                <div class="reset">
                    <asp:Button class="btn btn-success" runat="server" ID="btndelete" Text="Delete" Height="45px" Width="150px" OnClick="btndelete_Click" />
                </div>
            </fieldset>
        </div>

        <div>
        </div>

    </form>
    </asp:Content>