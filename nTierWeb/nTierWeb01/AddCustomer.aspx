<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="nTierWeb01.AddCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                    Add New Customer<br />
                    <br />
    
                    Customer ID:
                    <asp:TextBox ID="txtCustomerID" runat="server" MaxLength="5">_AC1</asp:TextBox>
                    <br />
                    Contact Name:
                    <asp:TextBox ID="txtContactName" runat="server">CCC Wang</asp:TextBox>
                    <br />
                    Contact Title:
                    <asp:TextBox ID="txtContactTitle" runat="server">Owner</asp:TextBox>
                    <br />
                    Company Name:
                    <asp:TextBox ID="txtComanyName" runat="server">A CCC1 Club</asp:TextBox>
                    <br />
                    City:
                    <asp:TextBox ID="txtCity" runat="server">Taipei</asp:TextBox>
                    
                <br />
        <br />
        <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClick="btnAddCustomer_Click" />
    
    </div>
    </form>
</body>
</html>
