<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_View_Purchase_History.aspx.cs" Inherits="Ad_View_Purchase_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View & Manage Orders</title>
    <link rel="stylesheet" type="text/css" href="CSS/adminadd.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <form id="forms" runat="server" enctype="multipart/form-data">
        <div class="col-sm-8 text-left" style="margin-left:250px"> 
             <h1>Order List</h1>
            
            <hr/>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tranid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="tranid" HeaderText="tranid" ReadOnly="True" SortExpression="tranid" InsertVisible="False" />
                    <asp:BoundField DataField="RecipientName" HeaderText="RecipientName" SortExpression="RecipientName" />
                    <asp:BoundField DataField="DeliveryStatus" HeaderText="DeliveryStatus" SortExpression="DeliveryStatus" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                    <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT * FROM [transaction1]"></asp:SqlDataSource>
            <br />
            <br />
             <br />
&nbsp;
           
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
        </div>
</asp:Content>
