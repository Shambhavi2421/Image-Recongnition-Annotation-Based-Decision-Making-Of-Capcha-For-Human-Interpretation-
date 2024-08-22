<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmNew1FirstPoint.aspx.cs" Inherits="frmNew1FirstPoint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            width: 129px;
        }
        .style2
        {
            height: 57px;
        }
        .style3
        {
            width: 112px;
        }
        .style4
        {
            height: 35px;
        }
        .style7
        {
            height: 35px;
        }
        </style>
         <style>
        body {
         background-color:#5CA6E2;
        }
             .style8
             {
                 width: 257px;
             }
    </style>
</head>
<body  >
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>

 $(document).ready(function() {
        $('img').on("mousemove", function(e) {
            var offset = $(this).offset();
            var X = (e.pageX - offset.left) + 0.046875;
            var Y = (e.pageY - offset.top);
            Y = Y + 0.5;
            $('#xycord').text('X: ' + X + ', Y: ' + Y);
        });
    });





    $(document).ready(function () {
        $('img').click(function (e) {
            var offset = $(this).offset();
            var X = (e.pageX - offset.left) + 0.046875;
            var Y = (e.pageY - offset.top);
            Y = Y + 0.5;
            $('#coord').text('X: ' + X + ', Y: ' + Y);
            $('#xycord').text('X: ' + X + ', Y: ' + Y);
            $('#xpoint').text(X);
            $('#ypoint').text(Y);

            var label = document.getElementById("<%=xpoint.ClientID %>");
            //Set the value of Label.
            label.innerHTML = X;
            //Set the value of Label in Hidden Field.
            document.getElementById("<%=hfName.ClientID %>").value = label.innerHTML;


            var ylabel = document.getElementById("<%=ypoint.ClientID %>");
            //Set the value of Label.
            ylabel.innerHTML = Y;
            //Set the value of Label in Hidden Field.
            document.getElementById("<%=hfName1.ClientID %>").value = ylabel.innerHTML;
        });
    });
</script>
    <div>
    

                <table  height: 683px;" 
            width="800">
                    <tr>
                        <td colspan="3">
                            <asp:Image ID="Image1" runat="server" Height="80px" 
                                ImageUrl="~/images/Title.png" Width="900px" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td>
    <table style="width:102%; height: 500px;">
        <tr>
            <td colspan="2" class="style2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Black" Text="Point Selection"></asp:Label>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                <asp:Image ID="ImgUpload" runat="server" Height="250px" Width="350px" />
            </td>
            <td>
                <table style="width:126%;">
                    <tr>
                        <td class="style4">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="X-Axis : "></asp:Label>
                        </td>
                        <td>
                <asp:Label ID="xpoint" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="X-Axis"></asp:Label>
                <asp:HiddenField ID = "hfName" runat = "server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="Y-Axis : "></asp:Label>
                  
                        </td>
                        <td>
                <asp:Label ID="ypoint" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="Y-Axis"></asp:Label>
                <asp:HiddenField ID = "hfName1" runat = "server" onvaluechanged="hfName1_ValueChanged" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="X Y Cordniates :"></asp:Label>
                        </td>
                        <td>
                <asp:Label ID="xycord" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="X Y Cordniates "></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Submit" 
                Width="75px" Height="30px" onclick="btnSubmit_Click"  />
                <asp:Button ID="btnSecondPt" runat="server" Font-Bold="True" Text="Second Point Selection" 
                Width="170px" Height="30px" onclick="btnSecondPt_Click" Visible="False"   />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                <asp:Button ID="btnDemo" runat="server" Font-Bold="True" Text="Prototype" 
                Width="243px" Height="30px" onclick="btnDemo_Click"    />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                <asp:Button ID="btnLogout" runat="server" Font-Bold="True" Text="Logout" 
                Width="75px" Height="30px" onclick="btnLogout_Click"   />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Yellow" Text="Select Image" Visible="False"></asp:Label>
            </td>
            <td class="style8">
                <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnGetImage" runat="server" Font-Bold="True" Text="Get Image" 
                Width="75px" Height="30px" onclick="btnGetImage_Click" Visible="False"   />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
        </table>
    
    </div>
    </form>
    </form>
</form>
</form>
</form>
    </form>
</form>
    
    </div>
    </form>
</body>
</html>
