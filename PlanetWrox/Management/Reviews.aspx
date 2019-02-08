<%@ Page Title="Planet Wrox - Management - Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Management_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">
                <ItemTemplate>
                    <asp:Label ID="AuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("Authorized")) %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [Id], [Title], [Authorized], [CreateDateTime] FROM [Review] WHERE ([GenreId] = @GenreId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="GenreId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>

