<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="Ad_Log.aspx.cs" Inherits="Ad_Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View Feedback</title>
    <link rel="stylesheet" href="style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <section id="content">
		<form runat="server" method="post" enctype="multipart/form-data">
			<h1 style="text-align:center">Login as Admin</h1>

            
            
            <br />
			<div>      
                Email Address<br /> <br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>      
				
			</div>
            <br />
			<div>
                Password<br /> <br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
				
			</div>
            <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            <a href="Cust_Home.aspx"><span class="alert-info">Go back to Home</span></a>
        </div>

         
			<div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
				

				</div>
			

		</form><!-- form -->
            </section>
        </div>
    </asp:Content>