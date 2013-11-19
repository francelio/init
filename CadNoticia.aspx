<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CadNoticia.aspx.cs" Inherits="SchoolSystem.CadNoticia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlCadastro" Visible="true">


        <h1 style="text-align: center">Cadastro de Notícias</h1>



        <ul>
            <li>
                <asp:Label Text="Titulo:" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txttitulo" CssClass="radiusInput" runat="server" Width="460px"></asp:TextBox>


            </li>



        </ul>
        <ul>
           
            <li>

                <asp:FileUpload ID="fupld" runat="server"  Width="480px" EnableTheming="False" EnableViewState="False"/>


            </li>
        </ul>
        <ul>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Conteúdo:"></asp:Label>
            </li>


        </ul>
        <ul>
            <li>
                <asp:TextBox ID="txtConteudo" CssClass="radiusInput" runat="server" Height="150px" TextMode="MultiLine" Width="480px"></asp:TextBox>

            </li>
        </ul>
        <ul>

            <li>
                <asp:Button ID="btnaddUsuario" runat="server" Text="Salvar" CssClass="btnAdd btn" OnClick="btnaddUsuario_Click" />

            </li>
            <li>
                <asp:Button ID="btnLimpar" runat="server" Text="Limpar" CssClass="btnAdd btn" />

            </li>
        </ul>
    </asp:Panel>
</asp:Content>
