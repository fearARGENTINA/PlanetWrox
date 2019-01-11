<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Containers.aspx.cs" Inherits="Demos_Containers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="Show panel" OnCheckedChanged="CheckBox1_CheckedChanged"/>
           <asp:Panel ID="Panel1" runat="server" Visible="False">
              I am visible now</asp:Panel>
        </div>
    </form>
</body>
</html>
