﻿<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_ViewAllFeedback.aspx.cs" Inherits="Ad_ViewAllFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View Feedback</title>
   <link href="admin.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
           <div class="container-fluid text-center" style="position:center"> 
        <div class="col-sm-8 text-left" style="margin-left:250px"> 
      <br />
            <h1>Feedback List</h1>
      <hr/>
      
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="feedbackId" DataSourceID="SqlDataSource1" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="feedbackId" HeaderText="ID" ReadOnly="True" SortExpression="feedbackId" InsertVisible="False" />
                <asp:BoundField DataField="fullName" HeaderText="Name" SortExpression="fullName" />
                <asp:BoundField DataField="emailAdd" HeaderText="Email Address" SortExpression="emailAdd" />
                <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WAPPDBEntitiesConnectionString %>" SelectCommand="SELECT * FROM [feeedback]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <br />
        <br />
        <br />

    
        </div>
        </div>
    </form>
    </asp:Content>