<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <style type="text/css">
      .auto-style1 {
         width: 100%;
      }
   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table class="auto-style1">
              <tr>
                 <td>Bulleted List</td>
                 <td>
                    <ul>
                       <li>Electro</li>
                       <li>Rock</li>
                       <li>Punk</li>
                    </ul>
                 </td>
              </tr>
              <tr>
                 <td>Numbered List</td>
                 <td>
                    <ol>
                       <li>Jazz</li>
                       <li>Hip Hop</li>
                       <li>Trap</li>
                    </ol>
                 </td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
              </tr>
           </table>
        </div>
    </form>
</body>
</html>
