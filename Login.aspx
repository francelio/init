<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>







         <div>
    
    <div style="height: 100px">
    
    </div>
    
        <table  align="center" >
            <tr>
                <td colspan="2" style="text-align: center">
                    Login</td>
                <td style="text-align: center" class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td  class="radiusInput">
                    Usuário:</td>
                <td >
                    <asp:TextBox ID="txtUsuario" runat="server" OnTextChanged="txtUsuario_TextChanged"></asp:TextBox>
                   

                </td>
                <td class="auto-style1" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" >
                    Senha:</td>
                <td class="auto-style2" >
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
                    
                </td>
                <td class="auto-style2" >
                    </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    
                   
                </td>
                <td style="text-align: center" class="auto-style1">
                    
                   
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="92px" />
                </td>
                <td  align="right" > 
                    <asp:Button ID="btnConectar" runat="server" onclick="btnConectar_Click1" 
                        Text="Entrar" style="text-align: left" Width="83px" />
                </td>

                <td  align="right" class="auto-style1" > 
                    &nbsp;</td>

                </tr>
          
                
        </table>
    <div style=" color: #FF0000; display: block; top: 50%; right: 50%; text-align: center;">
    </div>
    
    </div>



    
    </div>
    </form>
</body>
</html>
