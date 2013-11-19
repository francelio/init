using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SchoolSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {


            if (txtnome.Text != string.Empty)
            {

                Conexao.obterConexao();
                SqlCommand cm = new SqlCommand("SpInserirDepartamento", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_dep", txtnome.Text);
                cm.Parameters.AddWithValue("@Cod_empre", ddlempresa.SelectedValue);
                cm.ExecuteNonQuery();
                Conexao.fecharConexao();

                txtnome.Text = "";
                warning.Visible = false;
                success.Visible = true;

            }
            else
            {
                warning.Visible = true;
            }


        }

        protected void btnlimpar_Click(object sender, EventArgs e)
        {
            txtnome.Text = "";
            warning.Visible = false;
            success.Visible = false;

        }
    }
}