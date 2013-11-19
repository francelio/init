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
    public partial class CadRamal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (txtnumero.Text != string.Empty)
            {
            Conexao.obterConexao();
            SqlCommand cm = new SqlCommand("SpInserirRamal", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@NUMERO_RAMAL", txtnumero.Text);
            cm.Parameters.AddWithValue("@DESC_RAMAL", txtdescricao.Text);
            cm.Parameters.AddWithValue("@COD_DEP", ddldepartamento.SelectedValue);
            cm.ExecuteNonQuery();
            Conexao.fecharConexao();

            txtnumero.Text = "";
            txtdescricao.Text = "";
            warning.Visible = false;
            success.Visible = true;

            }
            else
            {
                warning.Visible = true;
            }
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtnumero.Text = "";
            txtdescricao.Text = "";
           
        }

       
    }
}