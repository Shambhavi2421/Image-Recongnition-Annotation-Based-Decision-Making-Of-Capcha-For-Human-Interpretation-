<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmUserCoordinates.aspx.cs" Inherits="frmUserCoordinates" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 331px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="User Cordinate Details" 
                    Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    onclick="Button1_Click" style="margin-top: 0px" Text="Back" Width="75px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="usernm" HeaderText="User Name" 
                SortExpression="usernm" />
            <asp:BoundField DataField="xcord" HeaderText="X-cordinate" 
                SortExpression="xcord" />
            <asp:BoundField DataField="ycord" HeaderText="Y-cordinate" 
                SortExpression="ycord" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [usernm], [xcord], [ycord] FROM [tblCordinates]">
    </asp:SqlDataSource>
    <br />
</asp:Content>

