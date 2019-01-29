<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>
<style type="text/css">
   .auto-style1 {
      width: 100%;
   }
</style>

<table class="auto-style1">
   <tr>
      <td colspan="3">
         <h4>Use the form below to get in touch with us</h4>
      </td>
   </tr>
   <tr>
      <td>Name</td>
      <td>
         <asp:TextBox ID="Name" runat="server"></asp:TextBox>
      </td>
      <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
      </td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>
         <asp:Button ID="SendButton" runat="server" Text="Send" />
      </td>
      <td>&nbsp;</td>
   </tr>
</table>

<p class="ErrorMessage">
</p>


