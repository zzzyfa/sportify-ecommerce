<%@ Page Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Cust_Cart.aspx.cs" Inherits="Cust_Cart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <script type = "text/javascript">
    function Confirm1() {
        var confirm_value1 = document.createElement("INPUT");
        confirm_value1.type = "hidden";
        confirm_value1.name = "confirm_value1";
        if (confirm("Are you sure you want to remove this product from cart?")) {
            confirm_value1.value = "Yes";
        } else {
            confirm_value1.value = "No";
        }
        document.forms[0].appendChild(confirm_value1);
    }
</script>
        <div>

       <h1>Cart</h1>
        <div class="panel panel-default" style="margin-top: 20px;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Category</th>
                                <th>Type</th>
                                <th>Size</th>                               
                                <th>Price</th>                               
                                <th>Remove</th>
                                
                                
                                
                            </tr>
                        </thead>
                        <tbody id="tbody" runat="server">

                    </tbody>
                </table>

       
          
    </div>
    <div>Total Amount $
        <p id="amount" runat="server"></p>
        </div>
    
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Payment Details"></asp:Label>
            <br />
            <br />
            Total Price: <asp:Label ID="lbltotalprice" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Card Holder Name:
            <asp:TextBox ID="txtName" runat="server"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" ControltoValidate="txtName" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <br />
            
            Contact Number: <asp:TextBox ID="txtContact" runat="server" ></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required" ControltoValidate="txtContact" Visible="False"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid contact number" Visible="False" ValidationExpression="(nnn) nnn-nnnn" ControltoValidate="txtContact"></asp:RegularExpressionValidator>
            <br />
            <br />
            Card Number: <asp:TextBox ID="txtCard" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required" ControltoValidate="txtCard" Visible="False"></asp:RequiredFieldValidator>
            <br />
            <br />
            Shipping Address:
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="txtSubmit" runat="server" OnCommand="Button1_Click"  OnClick="Button1_Click" Text="Submit" style="height: 29px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Lime"></asp:Label>
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
</asp:Content>
