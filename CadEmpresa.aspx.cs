using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace SchoolSystem
{
    public partial class CadEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsalvar_Click(object sender, EventArgs e)
        {

            Conexao.obterConexao();
            SqlCommand cm = new SqlCommand("SpInserirEmpresa", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@nome_empre", txtnome.Text);
            cm.Parameters.AddWithValue("@cnpj", txtcnpj.Text);
            cm.Parameters.AddWithValue("@inscricao_estadual", txtinscricao.Text);
            cm.Parameters.AddWithValue("@razao_social", txtrazao.Text);
            cm.Parameters.AddWithValue("@cep", txtcep.Text);
            cm.Parameters.AddWithValue("@numero", txtnumero.Text);
            
            cm.ExecuteNonQuery();
            Conexao.fecharConexao();







        }

        protected void btnlimpar_Click(object sender, EventArgs e)
        {
            txtnome.Text = "";
            txtnumero.Text = "";
            txtrazao.Text = "";
            txtinscricao.Text = "";
            txtcep.Text = "";
            txtcnpj.Text = "";
            txtcomplemento.Text = "";
            txtendereco.Text = "";
            txtcidade.Text = "";


        }

        

        protected void txtcep_TextChanged(object sender, EventArgs e)
        {
            Conexao.obterConexao();

            SqlCommand cmd = new SqlCommand("SpSelecionarEndereco", Conexao.conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cep", txtcep.Text);

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {


                txtendereco.Text = reader["ENDERECO"].ToString();
                txtbairro.Text = reader["BAIRRO"].ToString();
                txtcidade.Text = reader["CIDADE"].ToString();
                txtestado.Text = reader["ESTADO"].ToString();
            }

            Conexao.fecharConexao();
        }

        
    }
}





