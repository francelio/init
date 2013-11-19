using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace SchoolSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {



            if (txtsenha.Text == txtsenha2.Text)
            {
                Conexao.obterConexao();
                SqlCommand cm = new SqlCommand("SpInserirUsuario", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@login_usuario", txtusuario.Text);
                cm.Parameters.AddWithValue("@senha_usuario", txtsenha.Text);
                cm.ExecuteNonQuery();
                Conexao.fecharConexao();
                success.Visible = true;
                txtsenha.Text = "";
                txtsenha2.Text = "";
                txtusuario.Text = "";
            }
            else
            {

                error.Visible = true;
                Conexao.fecharConexao();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtsenha.Text = "";
            txtsenha2.Text = "";
            txtusuario.Text = "";
            
            
        }

    }
}