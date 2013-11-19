<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CadUsuario.aspx.cs" Inherits="SchoolSystem.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">

    <asp:Panel runat="server" ID="pnlCadastro" Visible="true" >
        <h1>Cadastro Usuario</h1>
        <ul>
            <li>
                <asp:Label Text="Login" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txtusuario" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>

        </ul>
        <ul>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="txtsenha" CssClass="radiusInput" runat="server" TextMode="Password" Height="35px" Width="220px"></asp:TextBox>
            </li>
        </ul>
        <ul>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Confirmação de Senha"></asp:Label>
                <asp:TextBox ID="txtsenha2" CssClass="radiusInput" runat="server" TextMode="Password" Height="35px" Width="220px"></asp:TextBox>
            </li>

        </ul>
        <ul>
            <li>
                <asp:Button ID="btnsalvar" CssClass="btnAdd btn" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </li>
            <li>
                <asp:Button ID="Button1" CssClass="btn btnAdd" runat="server" Text="Limpar" OnClick="Button1_Click" />
            </li>


        </ul>

        
    </asp:Panel>


    <asp:Panel runat="server" ID="info" Visible="false" >     
         <ul class="info" >
              <li>Campos Obrigatorios</li>
          </ul>
    </asp:Panel>

     <asp:Panel runat="server" ID="success" Visible="false" >     
         <ul class="success">          
            <li>Cadastro Efetuado com Sucesso!</li>      
        </ul>
    </asp:Panel>

     <asp:Panel runat="server" ID="warning" Visible="false" >     
         <ul class="warning">
            <li>As Senhas digitadas não são iguais!</li>
        </ul>
    </asp:Panel>

     <asp:Panel runat="server" ID="error" Visible="false" >     
          <ul class="error">
          <li>Cadastro ja Existente!</li>  
        </ul>
    </asp:Panel>


    
        

        

       
        


















</asp:Content>
