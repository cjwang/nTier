<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="nTierWeb01.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
&nbsp;<table width="80%">
            <tr>
                <td class="auto-style2" >
                    <h2 class="auto-style1">nTier Demo
                </h2>
                </td>
            </tr>
            <tr valign="top">
                <td>
                    <asp:GridView ID="grdCustomer" runat="server">
                    </asp:GridView>
                </td>
                <td>
                    <asp:Button ID="btnAllCustomer" runat="server" Text="Load All Customers" OnClick="btnAllCustomer_Click" Width="185px" style="height: 26px" />

                    <br />
                    <asp:Button ID="btnCompanyNameStartWithA" runat="server" Text="CompanyName starts with A" Width="188px" OnClick="btnCompanyNameStartWithA_Click" />

                    <br />

                    <br />
                    <asp:Button ID="btnAddNewCustomer" runat="server" Text="Add a new customer" Width="187px" OnClick="btnAddNewCustomer_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnDeleteCustomer" runat="server" Text="Delete a new customer" Width="187px" OnClick="btnDeleteCustomer_Click" />
                    <br />

                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grdOrder" runat="server">
                    </asp:GridView>
                </td>
                <td>
                                       
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    
                    &nbsp;</td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
