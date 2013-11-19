<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CadEmpresa.aspx.cs" Inherits="SchoolSystem.CadEmpresa" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">



    <asp:Panel runat="server" ID="pnlCadastro" Visible="true">



        <ul>
            <h1 style="text-align: center">Cadastro de Empresa</h1>
        </ul>


        <ul>
            <li>
                <asp:Label Text="Nome Fantasia:" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="txtnome" CssClass="radiusInput" runat="server" TabIndex="1"></asp:TextBox>


            </li>


            <li>
                <asp:Label ID="Label2" runat="server" Text="Razão Social:"></asp:Label>
                <asp:TextBox ID="txtrazao" CssClass="radiusInput" runat="server" TabIndex="2"></asp:TextBox>
            </li>
        </ul>

        <ul>
            <li>
                <asp:Label Text="Inscrição Estadual:" ID="label3" runat="server"></asp:Label>
                <asp:TextBox ID="txtinscricao" CssClass="radiusInput" runat="server" TabIndex="3"></asp:TextBox>


            </li>


            <li>
                <asp:Label ID="Label4" runat="server" Text="CNPJ:"></asp:Label>
                <asp:TextBox ID="txtcnpj" CssClass="radiusInput" runat="server" TabIndex="4"></asp:TextBox>
            </li>
        </ul>




        <asp:Panel runat="server" ID="pnlEndereco" Visible="true" Width="707px">

            <ul>
                <h3 style="text-align: center">Endereço:</h3>
            </ul>



            <ul>
                <li>
                    <asp:Label Text="CEP:" ID="label5" runat="server"></asp:Label>
                    <asp:TextBox ID="txtcep" CssClass="radiusInput" runat="server" AutoPostBack="true" OnTextChanged="txtcep_TextChanged" TabIndex="5" MaxLength="9"></asp:TextBox>
       
                </li>
                <li></li>



            </ul>

            <ul>
                <li>
                    <asp:Label Text="Endereço:" ID="label7" runat="server"></asp:Label>
                    <asp:TextBox ID="txtendereco" CssClass="radiusInput" runat="server"></asp:TextBox>


                </li>


                <li>
                    <asp:Label ID="Label8" runat="server" Text="Numero:"></asp:Label>
                    <asp:TextBox ID="txtnumero" CssClass="radiusInput" runat="server" TabIndex="6"></asp:TextBox>
                </li>
            </ul>

            <ul>
                <li>
                    <asp:Label Text="Bairro:" ID="label6" runat="server"></asp:Label>
                    <asp:TextBox ID="txtbairro" CssClass="radiusInput" runat="server"></asp:TextBox>


                </li>


                <li>

                    <asp:Label ID="Label10" runat="server" Text="Complemento:"></asp:Label>
                    <asp:TextBox ID="txtcomplemento" CssClass="radiusInput" runat="server" TabIndex="7"></asp:TextBox>

                </li>
            </ul>

            <ul>
                <li>
                    <asp:Label ID="Label9" runat="server" Text="Cidade:"></asp:Label>
                    <asp:TextBox ID="txtcidade" CssClass="radiusInput" runat="server"></asp:TextBox>

                </li>
                <li>
                    <asp:Label ID="Label11" runat="server" Text="UF:"></asp:Label>
                    <asp:TextBox ID="txtestado" CssClass="radiusInput" runat="server"></asp:TextBox>



                </li>
            </ul>

            <ul>
                <li>
                    <asp:Button ID="btnsalvar" runat="server" Text="Salvar" CssClass="btnAdd" OnClick="btnsalvar_Click" Height="54px" Width="245px" TabIndex="8" />
                </li>
                <li>
                    <asp:Button ID="btnlimpar" CssClass="btnAdd" runat="server" Text="Limpar" Height="54px" Width="245px" OnClick="btnlimpar_Click" TabIndex="9" />
                </li>

            </ul>

        </asp:Panel>

        <asp:Panel runat="server" ID="error" Visible="false">
            <ul class="error">
                <li>Cadastro ja Existente!</li>
            </ul>
        </asp:Panel>
        <asp:Panel runat="server" ID="success" Visible="false">
            <ul class=" success">
                <li>Cadastro ja Existente!</li>
            </ul>
        </asp:Panel>





    </asp:Panel>

</asp:Content>
