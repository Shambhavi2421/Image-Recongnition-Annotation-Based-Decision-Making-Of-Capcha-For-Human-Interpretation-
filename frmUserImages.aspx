<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmUserImages.aspx.cs" Inherits="frmUserImages" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            width: 128px;
        }
        .style6
        {
            width: 93px;
        }
        .style7
        {
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:119%; height: 157px;">
        <tr>
            <td colspan="7">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Black" Text="Admin Module"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="7">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="btnUdetails" runat="server" 
                    ImageUrl="~/images/Buttons/button_user-details.png" 
                    onclick="btnUdetails_Click" />
            </td>
            <td class="style5">
                <asp:ImageButton ID="btnUImage" runat="server" 
                    ImageUrl="~/images/Buttons/button_user-images.png" onclick="btnUImage_Click" />
            </td>
            <td class="style6">
                <asp:ImageButton ID="BtnLogoutt" runat="server" 
                    ImageUrl="~/images/Buttons/button_logout.png" onclick="BtnLogoutt_Click" />
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="pnlImg" runat="server" 
            Height="713px" Width="707px">
        <asp:GridView ID="gvImg" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" OnRowDataBound="OnRowDataBound" 
                Width="315px" Height="403px" 
                onselectedindexchanged="gvImg_SelectedIndexChanged">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="usernm" HeaderText="Name" />
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("img") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="100px" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pic">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("img") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("img") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </asp:Panel>
    <table style="width:119%; height: 157px;">
        <tr>
            <td>
                <asp:Panel ID="pnlUserlist" runat="server" Visible="False" Height="700px">
                    <asp:GridView ID="gvUserList" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="dsUserList">
                        <RowStyle ForeColor="#000066" />
                        <Columns>
                            <asp:BoundField DataField="userid" HeaderText="userid" 
                    SortExpression="userid" />
                            <asp:BoundField DataField="usernm" HeaderText="usernm" 
                    SortExpression="usernm" />
                            <asp:BoundField DataField="passwd" HeaderText="passwd" 
                    SortExpression="passwd" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="surname" HeaderText="surname" 
                    SortExpression="surname" />
                            <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                            <asp:BoundField DataField="mailid" HeaderText="mailid" 
                    SortExpression="mailid" />
                            <asp:BoundField DataField="mobno" HeaderText="mobno" 
                    SortExpression="mobno" />
                            <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dsUserList" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [tblRegister]"></asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

