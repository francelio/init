<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ConNoticia.aspx.cs" Inherits="SchoolSystem.ConNoticia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
     <asp:Panel runat="server" ID="pnlCadastro" Visible="true" Width="707px">
    
       <ul> <h1 style="text-align: center">Cadastro de Empresa</h1> </ul>


        <ul>
            <li >
                <asp:Label Text="Nome Fantasia:" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txtnome" CssClass="radiusInput" runat="server" ></asp:TextBox>


            </li>


            <li>
                <asp:Label ID="Label2" runat="server" Text="Razão Social:"></asp:Label>
                <asp:TextBox ID="txtrazao" CssClass="radiusInput" runat="server" ></asp:TextBox>
            </li>
        </ul>
      
     </asp:Panel>
</asp:Content>
