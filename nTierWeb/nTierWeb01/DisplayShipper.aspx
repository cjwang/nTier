<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayShipper.aspx.cs" Inherits="nTierWeb01.DisplayShipper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnLoadShipper" runat="server" Text="Load Shipper" OnClick="btnLoadShipper_Click" />
    
        <asp:GridView ID="grShipper" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
