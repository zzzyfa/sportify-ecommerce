<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_ViewAllItems.aspx.cs" Inherits="Ad_ViewAllItens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View & Manage Products</title>
   <link href="admin.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="forms" runat="server" enctype="multipart/form-data">
     <div class="container-fluid text-center" style="position:center"> 
        <div class="col-sm-8 text-left" style="margin-left:250px"> 
      <br />
            <h1>Product List</h1>
      <hr/>
      
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True" SortExpression="ProductID" InsertVisible="False" />
                <asp:BoundField DataField="ProductName" HeaderText="Name" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductCategory" HeaderText="Category" SortExpression="ProductCategory" />    
                <asp:BoundField DataField="ProductType" HeaderText="Type" SortExpression="ProductType" />
                <asp:BoundField DataField="ProductDescp" HeaderText="Description" SortExpression="ProductDescp" />
                <asp:BoundField DataField="ProductSize" HeaderText="Size" SortExpression="ProductSize" />
                
                <asp:BoundField DataField="ProductPrice" HeaderText="Price" SortExpression="ProductPrice" />
                
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductDescp], [ProductType], [ProductSize], [ProductCategory], [ProductPrice], [Product_Image_Name1] FROM [Product]"></asp:SqlDataSource>
        <br />
      
        

    <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Manage Product" Font-Size="Large"></asp:Label><br />
            <hr />

        <asp:Label ID="Label3" runat="server" Text="Enter product ID: " Font-Size="medium"></asp:Label>&nbsp&nbsp&nbsp<asp:TextBox ID="txtDeliveryID" runat="server" Font-Size="Large"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Edit" CssClass="btn btn-lg btn-success btn-block" OnCLientClick="Confirm()" Width="400px" OnClick="btnUpdate_Click"/>
            <br />
        <br />
        <br />
        <br />
            
        </div>
        </div>
        </form>
    </asp:Content>
