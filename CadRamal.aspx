<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CadRamal.aspx.cs" Inherits="SchoolSystem.CadRamal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">


    <asp:Panel runat="server" ID="pnlCadastro" Visible="true">
        <h1>Cadastro De Ramal</h1>
       <ul>
            <li>
                <asp:Label Text="Ramal" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txtnumero" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="txtdescricao" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>

           </ul>
        <ul>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Departamento"></asp:Label>

                <asp:DropDownList ID="ddldepartamento" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOME_DEP" DataValueField="COD_DEP">
                </asp:DropDownList>
            </li>
            
          
            </ul>

            <ul>
                <li>
                    <asp:Button ID="btnCadastrar" CssClass="btnAdd btn" runat="server" Text="Cadastrar" Height="58px" Width="217px" OnClick="btnCadastrar_Click" />
                </li>
                <li>
                    <asp:Button ID="btnLimpar" CssClass="btnAdd btn" runat="server" Text="Limpar" Height="58px" Width="217px" OnClick="btnLimpar_Click" />
                </li>
                
            </ul>
       
    </asp:Panel>
    <asp:Panel runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBConnectionString %>" SelectCommand="SELECT [COD_DEP], [NOME_DEP] FROM [DEPARTAMENTO]"></asp:SqlDataSource>
    </asp:Panel>
     <asp:Panel runat="server" ID="success" Visible="false">
        <ul class="success">
            <li>Cadastro Efetuado com Sucesso!</li>
        </ul>
    </asp:Panel>
    <asp:Panel runat="server" ID="warning" Visible="false" >     
         <ul class="warning">
            <li>Preencha Todos os Campos! </li>
        </ul>
    </asp:Panel>

   </asp:Content>
 