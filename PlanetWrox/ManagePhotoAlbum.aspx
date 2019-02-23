<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits=" _ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id"
        InsertItemPosition="LastItem" ItemType="Picture"
        SelectMethod="ListView1_GetData" InsertMethod="ListView1_InsertItem" DeleteMethod="ListView1_DeleteItem" OnItemCreated="ListView1_ItemCreated">
        <InsertItemTemplate>
            <li>Description:
                <asp:TextBox ID="Description" runat="server"
                    TextMode="MultiLine" Text='<%# BindItem.Description %>' /><br />
                <asp:RequiredFieldValidator ErrorMessage="Error, complete description" ControlToValidate="Description" runat="server" ID="reqDesc" />
                ToolTip:
                <asp:TextBox ID="ToolTip" runat="server"
                    Text='<%# BindItem.ToolTip %>' /><br />
                <asp:RequiredFieldValidator ErrorMessage="Error, complete tooltip" ControlToValidate="ToolTip" runat="server" ID="reqToolTip" />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:CustomValidator ErrorMessage="Select a valid .jpg file" ControlToValidate="FileUpload1" runat="server" ID="cusValImage" />
                <br />
                <asp:Button ID="InsertButton" runat="server" Text="Insert" CommandName="Insert" />
            </li>
        </InsertItemTemplate>
        <ItemTemplate>
            <li>Description:
                <asp:Label ID="Description" runat="server"
                    Text='<%# Item.Description %>' /><br />
                ToolTip:
                <asp:Label ID="ToolTip" runat="server"
                    Text='<%# Item.ToolTip %>' /><br />
                Image:
                <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Item.ImageUrl %>' />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete"
                    Text="Delete" CausesValidation="False" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="ItemContainer">
                <li runat="server" id="itemPlaceholder" />
            </ul>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>

