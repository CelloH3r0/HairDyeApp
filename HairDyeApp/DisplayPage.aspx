<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPage.aspx.cs" Inherits="HairDyeApp.DisplayPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title></title>
    </head>
    <body style="height: 649px">
        <form id="form1" runat="server" class="form-horizontal">
            <%--<div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Color:"></asp:Label>           
                <asp:CheckBoxList ID="cblColors" runat="server" DataSourceID="colors" DataTextField="color" DataValueField="color">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="colors" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT color FROM colors ORDER BY color ASC"></asp:SqlDataSource>            
            </div>
            <br/>
            <div>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Size (oz.):"></asp:Label>
                <asp:CheckBoxList ID="cblSize" runat="server" DataSourceID="size" DataTextField="size" DataValueField="size">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="size" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT size FROM colors ORDER BY size ASC"></asp:SqlDataSource>
            </div>
            <br/>
            <div>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Brand:"></asp:Label>
                <asp:CheckBoxList ID="cblBrand" runat="server" DataSourceID="brand" DataTextField="brand" DataValueField="brand">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="brand" runat="server" ConnectionString="<%$ ConnectionStrings:hair_dyeConnectionString %>" ProviderName="<%$ ConnectionStrings:hair_dyeConnectionString.ProviderName %>" 
                    SelectCommand="SELECT DISTINCT brand FROM colors ORDER BY brand ASC"></asp:SqlDataSource>
            </div>
            <br /><br />--%>

            <h1 class="col-sm-offset-2">Hair Dye Finder</h1>

            <div class="form-group">
                <label class="control-label col-sm-3">Color</label>
                <div class="col-sm-5">
                    <asp:CheckBox ID="chkRed" runat="server" Text="Red"></asp:CheckBox>
                    <asp:CheckBox ID="chkOrange" runat="server" Text="Orange"></asp:CheckBox>
                    <asp:CheckBox ID="chkYellow" runat="server" Text="Yellow"></asp:CheckBox>
                    <asp:CheckBox ID="chkGreen" runat="server" Text="Green"></asp:CheckBox>
                    <asp:CheckBox ID="chkBlue" runat="server" Text="Blue"></asp:CheckBox>
                    <asp:CheckBox ID="chkPink" runat="server" Text="Pink"></asp:CheckBox>
                    <asp:CheckBox ID="chkOther" runat="server" Text="Other"></asp:CheckBox>
                </div>
                <br />
                <label class="control-label col-sm-3">Size</label>
                <div class="col-sm-5">
                    <asp:CheckBox ID="chk3oz" runat="server" Text="3.50 oz"></asp:CheckBox>
                    <asp:CheckBox ID="chk4oz" runat="server" Text="4.00 oz"></asp:CheckBox>
                    <asp:CheckBox ID="chk5oz" runat="server" Text="5.00 oz"></asp:CheckBox>
                    <asp:CheckBox ID="chk6oz" runat="server" Text="6.76 oz"></asp:CheckBox>
                </div>
                <br />
                <label class="control-label col-sm-3">Brand</label>
                <div class="col-sm-5">
                    <asp:CheckBox ID="chkArctic" runat="server" Text="Arctic Fox"></asp:CheckBox>
                    <asp:CheckBox ID="chkManic" runat="server" Text="Manic Panic"></asp:CheckBox>
                    <asp:CheckBox ID="chkPunky" runat="server" Text="Punky"></asp:CheckBox>
                    <asp:CheckBox ID="chkLunar" runat="server" Text="Lunar Tides"></asp:CheckBox>
                    <asp:CheckBox ID="chkRaw" runat="server" Text="Raw"></asp:CheckBox>
                    <asp:CheckBox ID="chkSpecial" runat="server" Text="Special Effects"></asp:CheckBox>
                    <asp:CheckBox ID="chkGDY" runat="server" Text="The Good Dye Young"></asp:CheckBox>
                </div>
                <br />
                <label class="control-label col-sm-3">Price</label>
                <div class="col-sm-5">
                    <asp:CheckBox ID="chk7" runat="server" Text="$7.99"></asp:CheckBox>
                    <asp:CheckBox ID="chk11" runat="server" Text="$11.99"></asp:CheckBox>
                    <asp:CheckBox ID="chk13" runat="server" Text="$13.99"></asp:CheckBox>
                    <asp:CheckBox ID="chk16" runat="server" Text="$16.00"></asp:CheckBox>
                    <asp:CheckBox ID="chk17" runat="server" Text="$17.99"></asp:CheckBox>
                    <asp:CheckBox ID="chk18" runat="server" Text="$18.99"></asp:CheckBox>
                </div>                   

                <br /><br />
                <asp:Button ID="Button2" runat="server" Text="Find my dye!" OnClick="Button1_Click" />
            </div>
        </form>
    </body>
</html>
