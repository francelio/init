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
    public partial class ConEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtprocurar.Focus();
            Conexao.obterConexao();


            DataSet ds = new DataSet();

            SqlCommand cm = new SqlCommand("SpSelecEmpresaT", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            gvempresa.DataSource = ds;
            gvempresa.DataBind();
            Conexao.fecharConexao();

        }

        protected void btnprocurar_Click(object sender, EventArgs e)
        { 

            if (txtprocurar.Text != null)
            {
                if (ddlcondicao.SelectedValue == "Empresa")
                {   
                    Conexao.obterConexao();
                    DataSet ds = new DataSet();
                    SqlCommand cm = new SqlCommand("SpSelecEmpresa", Conexao.conn);
                    cm.CommandType = CommandType.StoredProcedure;
                    cm.Parameters.AddWithValue("@nome_empre", txtprocurar.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cm);
                    da.Fill(ds);
                    gvempresa.DataSource = ds;
                    gvempresa.DataBind();
                    Conexao.fecharConexao();
                }
                if (ddlcondicao.SelectedValue == "Cep")
                {
                    Conexao.obterConexao();
                    DataSet ds = new DataSet();
                    SqlCommand cm = new SqlCommand("SpSelecEmpresa2", Conexao.conn);
                    cm.CommandType = CommandType.StoredProcedure;
                    cm.Parameters.AddWithValue("@cep", txtprocurar.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cm);
                    da.Fill(ds);
                    gvempresa.DataSource = ds;
                    gvempresa.DataBind();
                    Conexao.fecharConexao();
                }
            }
            else {
                ast.Text = "Preenchimento Obrigatorio!";

            
            }


        }

        protected void ddlcondicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtprocurar.Focus();

            if (ddlcondicao.SelectedValue == "Cep")
            {
                lblmas.Text = "Insira o Cep da Empresa";
            }
            else
            {


            }


        }




    }
}