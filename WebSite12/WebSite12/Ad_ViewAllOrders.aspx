<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Ad_ViewAllOrders.aspx.cs" Inherits="Ad_ViewAllOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View & Manage Orders</title>
    <link rel="stylesheet" type="text/css" href="CSS/adminadd.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="forms" runat="server" enctype="multipart/form-data">
         <div class="container-fluid text-center" style="position:center"> 
        <div class="col-sm-8 text-left" style="margin-left:250px"> 
      <br />
            <h1>Order List</h1>
      <hr/>
      
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="tranid" DataSourceID="SqlDataSource1" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                    <asp:BoundField DataField="tranid" HeaderText="ID" ReadOnly="True" SortExpression="tranid" InsertVisible="False" />
                    <asp:BoundField DataField="RecipientName" HeaderText="Name" SortExpression="RecipientName" />
                    <asp:BoundField DataField="DeliveryStatus" HeaderText="Delivery Status" SortExpression="DeliveryStatus" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="Shipping Address" SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" SortExpression="TotalPrice" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" SortExpression="ContactNumber" />
                    <asp:BoundField DataField="CardNumber" HeaderText="Card Number" SortExpression="CardNumber" />
                
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT * FROM [transaction1]"></asp:SqlDataSource>
        <br />
        <br />
        <br />

    <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Update Status" Font-Size="Large"></asp:Label><br />
            <hr />

        <asp:Label ID="Label3" runat="server" Text="OrderID for delivery: " Font-Size="medium"></asp:Label>&nbsp&nbsp&nbsp<asp:TextBox ID="txtDeliveryID" runat="server" Font-Size="Large"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Fulfill Delivery" class="btn btn-lg btn-success btn-block" OnCLientClick="Confirm()" Width="400px" OnClick="btnUpdate_Click1"/>
            
        <br />
        <br />
        <br />
            
        </div>
        </div>
         </form>
    </asp:Content>