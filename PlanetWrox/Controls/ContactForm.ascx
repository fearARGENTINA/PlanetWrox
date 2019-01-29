﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>

<script>
   function validatePhoneNumbers(source, args)
   {
      var phoneHome = document.getElementById('PhoneHome');
      var phoneBusiness = document.getElementById('PhoneBusiness');
      if (phoneHome.value != '' || phoneBusiness.value != '')
      {
         args.IsValid = true;
      }
      else
      {
         args.IsValid = false;
      }
   }
</script>

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
      <td>E-mail address</td>
      <td>
         <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
      </td>
      <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
      </td>
   </tr>
   <tr>
      <td>Repeat e-mail address </td>
      <td>
         <asp:TextBox ID="ConfirmEmailAddress" runat="server"></asp:TextBox>
      </td>
      <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e-mail">*</asp:RequiredFieldValidator>
         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="The e-mail addresses">*</asp:CompareValidator>
      </td>
   </tr>
   <tr>
      <td>Home phone number</td>
      <td>
         <asp:TextBox ID="PhoneHome" runat="server" ClientIDMode="Static"></asp:TextBox>
      </td>
      <td>
         <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
      </td>
   </tr>
   <tr>
      <td>Business phone number</td>
      <td>
         <asp:TextBox ID="PhoneBusiness" runat="server" ClientIDMode="Static"></asp:TextBox>
      </td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td>Comments</td>
      <td>
         <asp:TextBox ID="Comments" runat="server" Height="113px" TextMode="MultiLine" Width="262px"></asp:TextBox>
      </td>
      <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
      </td>
   </tr>
   <tr>
      <td>&nbsp;</td>
      <td>
         <asp:Button ID="SendButton" runat="server" Text="Send" />
      </td>
      <td>&nbsp;</td>
   </tr>
   <tr>
      <td colspan="3">
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors: " ShowMessageBox="True" ShowSummary="False" />
      </td>
   </tr>
</table>

<p class="ErrorMessage">
</p>