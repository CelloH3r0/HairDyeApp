<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPage.aspx.cs" Inherits="HairDyeApp.DisplayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 649px">
    <form id="form1" runat="server">
       
        <div>
           <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Color:"></asp:Label>           
           <asp:RadioButtonList ID="btnListColors" runat="server" DataSourceID="SqlDataSource2" DataTextField="color" DataValueField="color">
           </asp:RadioButtonList>            
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT color FROM colors
ORDER BY color asc"></asp:SqlDataSource>
       </div>
       <br/>
       <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Size (oz.):"></asp:Label>
       </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="size" DataValueField="size">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT size FROM colors
ORDER BY size ASC"></asp:SqlDataSource>
       <br/>
       <div>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Brand:"></asp:Label>
       </div>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="brand" DataValueField="brand">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT brand FROM colors
ORDER BY brand ASC"></asp:SqlDataSource>
    </form>
</body>
</html>
