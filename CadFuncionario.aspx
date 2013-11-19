<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CadFuncionario.aspx.cs" Inherits="SchoolSystem.CadFuncionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">



    <h1 style="text-align: center">Cadastro de Funcionário</h1>
    <asp:Panel runat="server">
        <ul>
            <li style="width: 400px; height: 56px">
                <asp:Label Text="Nome:" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txtnome" CssClass="radiusInput" runat="server" Width="350px"></asp:TextBox>


            </li>


        </ul>

        <ul>
            <li style="width: 400px;">
                <asp:Label ID="Label4" runat="server" Text="CPF:"></asp:Label>
                <asp:TextBox ID="txtcpf" CssClass="radiusInput" runat="server" Width="200px"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Data de Nascimento::" ID="label3" runat="server"></asp:Label>
                <asp:TextBox ID="txtDataNasci" CssClass="radiusInput" runat="server" Width="150px"></asp:TextBox>
            </li>
        </ul>
    </asp:Panel>




    <asp:Panel runat="server" ID="Panel1" Visible="true">

        <h3>Endereço:</h3>


        <ul>
            <li style="width: 400px; height: 56px">
                <asp:Label Text="CEP:" ID="label5" runat="server"></asp:Label>
                <asp:TextBox ID="txtcep" CssClass="radiusInput" runat="server" AutoPostBack="true" OnTextChanged="txtcep_TextChanged"></asp:TextBox>


            </li>



        </ul>

        <ul>
            <li>
                <asp:Label Text="Endereço:" ID="label7" runat="server"></asp:Label>
                <asp:TextBox ID="txtendereco" CssClass="radiusInput" runat="server"></asp:TextBox>


            </li>


            <li>
                <asp:Label ID="Label8" runat="server" Text="Numero:"></asp:Label>
                <asp:TextBox ID="txtnumero" CssClass="radiusInput" runat="server" Width="200px"></asp:TextBox>
            </li>
        </ul>

        <ul>
            <li>
                <asp:Label Text="Bairro:" ID="label6" runat="server"></asp:Label>
                <asp:TextBox ID="txtbairro" CssClass="radiusInput" runat="server"></asp:TextBox>


            </li>


            <li>


                <asp:Label ID="Label10" runat="server" Text="Complemento:"></asp:Label>
                <asp:TextBox ID="txtcomplemento" CssClass="radiusInput" runat="server"></asp:TextBox>



            </li>
        </ul>

        <ul>
            <li>
                <asp:Label ID="Label9" runat="server" Text="Cidade:"></asp:Label>
                <asp:TextBox ID="txtcidade" CssClass="radiusInput" runat="server" Width="200px"></asp:TextBox>





            </li>
            <li>
                <asp:Label ID="Label11" runat="server" Text="UF:"></asp:Label>
                <asp:TextBox ID="txtestado" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
        </ul>

        <ul>
            <li>
                <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="btnAdd" Height="54px" Width="245px" />
            </li>
            <li>
                <asp:Button ID="btnlimpar" CssClass="btnAdd" runat="server" Text="Limpar" Height="54px" Width="245px" />
            </li>

        </ul>
    </asp:Panel>

    <asp:Panel runat="server" ID="Panel3" Visible="true">
        <h1 style="text-align: center">Associar a uma Empresa </h1>
        <ul>
            <li >
                <asp:Label Text="Empresa:" ID="label12" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlempresa" runat="server" CssClass="DropDownList">
                </asp:DropDownList>


            </li>



        </ul>



        <ul>
            <li >
                <asp:Label Text="Departamento:" ID="label14" runat="server"></asp:Label>
                <asp:DropDownList ID="ddldepartamento" runat="server" CssClass="DropDownList">
                </asp:DropDownList>

            </li>


            <li>
                <asp:Label ID="Label15" runat="server" Text="Cargo:"></asp:Label>
                <asp:TextBox ID="txtcargo" CssClass="radiusInput" runat="server" Width="200px"></asp:TextBox>
            </li>
        </ul>
    </asp:Panel>

    <asp:Panel runat="server" ID="Panel4" Visible="true">
        <h1 style="text-align: center">Associar uma conta de usuário </h1>
        <ul>
            <li style="width: 400px; height: 56px">
                <asp:Label Text="Selecione o Usuario:" ID="label16" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlusuario" runat="server" CssClass="DropDownList">
                </asp:DropDownList>

            </li>
            <li>
                <asp:Button ID="btnaddUsuario" runat="server" Text="Adicionar" CssClass="btnAdd" Height="54px" Width="245px" />


            </li>



        </ul>



    </asp:Panel>




















</asp:Content>
