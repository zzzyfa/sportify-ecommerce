<%@ Page Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Cust_Log.aspx.cs" Inherits="Cust_Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Login as Customer</title>
    <link rel="stylesheet" href="style.css"/>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="container">
        <section id="content" style="margin-left:200px">
		<form runat="server" method="post" enctype="multipart/form-data">
			<h1 style="text-align:center">Login</h1>
            
            
            <br />
			<div>      
                <label style="float:left; margin-left:10px">Email Address:</label><br /> <br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>      
				
			</div>
            <br />
			<div>
                <label style="float:left; margin-left:10px" >Password:</label><br /> <br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
				
			</div>
            <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>

        </div>

         
			<div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
				<asp:LinkButton ID="linkRegister" runat="server">Register</asp:LinkButton>

				</div>
			

		</form><!-- form -->
            </section>
    </div>    
 </asp:Content>
