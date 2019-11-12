<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPage.aspx.cs" Inherits="HairDyeApp.DisplayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Color:"></asp:Label>           
            </div>
            <asp:CheckBoxList ID="chkLstColor" runat="server" AutoPostBack="True" DataSourceID="colors" DataTextField="color" DataValueField="color">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="colors" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT color 
FROM colors
ORDER BY color ASC"></asp:SqlDataSource>
            <br/>
            <div>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Price:"></asp:Label>
            </div>
            <asp:CheckBoxList ID="chkLstPrice" runat="server" AutoPostBack="True" DataSourceID="price" DataTextField="price" DataValueField="price">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="price" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT price 
FROM colors
ORDER BY price ASC"></asp:SqlDataSource>
            <br/>
            <div>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Brand:"></asp:Label>
            </div>
            <asp:CheckBoxList ID="chkLstBrand" runat="server" DataSourceID="brand" DataTextField="brand" DataValueField="brand">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="brand" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT brand
FROM colors
ORDER BY brand ASC"></asp:SqlDataSource>
            <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Size:"></asp:Label>
                <asp:CheckBoxList ID="chkLstSize" runat="server" AutoPostBack="True" DataSourceID="size" DataTextField="size" DataValueField="size">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="size" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT size
FROM colors
ORDER BY size ASC"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Glows under UV light:"></asp:Label>
        <br />
        <asp:RadioButton ID="rdoNGlow" runat="server" Text="No" Checked="true" GroupName="glow" AutoPostBack="True" />
        <br />
        <asp:RadioButton ID="rdoGlow" runat="server" Text="Yes" GroupName="glow" AutoPostBack="True" />
        <br />
        <br />
        <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
        <br />
    </form>
</body>
</html>
