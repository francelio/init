<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CadDepartamento.aspx.cs" Inherits="SchoolSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">



    <asp:Panel runat="server" ID="pnlCadastro" Visible="true">
        <h1>Cadastro de Departamento</h1>
        <ul>
            <li>
                <asp:Label Text="Departamento..::" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txtnome" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Empresa..::"></asp:Label>

                <asp:DropDownList ID="ddlempresa" InitialValue="Selecione uma Empresa" runat="server" CssClass="DropDownList" DataSourceID="SqlDataSource1" DataTextField="NOME_EMPRE" DataValueField="COD_EMPRE">
                    
                </asp:DropDownList>
            </li>

        </ul>

        <ul>



            <li>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBConnectionString %>" SelectCommand="SELECT [NOME_EMPRE], [COD_EMPRE] FROM [EMPRESA]"></asp:SqlDataSource>

            </li>

        </ul>
        <ul>
            <li>
                <asp:Button ID="btnCadastrar" CssClass="btnAdd btn" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </li>
            <li>
                <asp:Button ID="btnlimpar" CssClass="btnAdd btn" runat="server" Text="Limpar" OnClick="btnlimpar_Click" />

            </li>
        </ul>

    </asp:Panel>

    <asp:Panel runat="server" ID="success" Visible="false">
        <ul class="success">
            <li>Cadastro Efetuado com Sucesso!</li>
        </ul>
    </asp:Panel>
    <asp:Panel runat="server" ID="warning" Visible="false" >     
         <ul class="warning">
            <li>Preencha o Nome do Departamento </li>
        </ul>
    </asp:Panel>











</asp:Content>
