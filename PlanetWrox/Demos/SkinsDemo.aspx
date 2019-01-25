<%@ Page Title="Skins Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SkinsDemo.aspx.cs" Inherits=" Demos_SkinsDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
   <asp:button ID="Button3" runat="server" text="Button" />
   <asp:button ID="Button4" runat="server" text="Button" SkinID="RedButton"/>
</asp:Content>

