<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCustomer.aspx.cs" Inherits="nTierWeb01.DeleteCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Delete Customer<br />
        <br />
        Customer ID:
        <asp:TextBox ID="txtCustomerID" runat="server" MaxLength="5"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnDeleteCustomer" runat="server" Text="Delete" OnClick="btnDeleteCustomer_Click" />
    </div>
    </form>
</body>
</html>
