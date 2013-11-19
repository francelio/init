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
    public partial class CadFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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