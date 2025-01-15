<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
               
                 <tr>
                     <td>Model :</td>
                     <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                     
                 </tr>
                     <tr>
                     <td>Serial number :</td>
                     <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                     </tr>
                 
                     <tr>
                     <td> Color :</td>
                     <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    </tr>
                  <tr>
                          <td>Date of manifacturing : </td>
                          <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                         </tr>
                 <tr>
                     <td> </td>
                     <td><asp:button ID="btninsert" runat="server" Text="Submit" OnClick="btninsert_Click"></asp:button></td>
                    </tr>
                 <tr>
                     <td> </td>
                     <td><asp:GridView ID="gview" runat="server"  AutoGenerateColumns="true"></asp:GridView></td>
                    </tr>
                 
            </table>
        </div>
    </form>
</body>
</html>
