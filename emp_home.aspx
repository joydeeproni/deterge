<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emp_home.aspx.cs" Inherits="template_test.emp_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="2537px">
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonPickup" runat="server" OnClick="ButtonPickup_Click" Text="PICKUP REQUESTED" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonLechukehai" runat="server" Text="LE CHUKE HAI" OnClick="ButtonLechukehai_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDhobikodieh" runat="server" Text="LAUNDRY MEIN DIE H" OnClick="ButtonDhobikodieh_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Buttondhobisemilgya" runat="server" Text="LAUNDRY SE BACK MIL GYA" OnClick="Buttondhobisemilgya_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Buttonorderdelivered" runat="server" Text="ORDER DELIVERED" OnClick="Buttonorderdelivered_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="2264px" Width="1254px">
            </asp:GridView>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
