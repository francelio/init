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
    public partial class ConFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conexao.obterConexao();


            DataSet ds = new DataSet();

            SqlCommand cm = new SqlCommand("SpSelecFuncionarioT", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            gvfuncionario.DataSource = ds;
            gvfuncionario.DataBind();
            Conexao.fecharConexao();
        }

        protected void btnprocurar_Click(object sender, EventArgs e)
        {
            if (ddlcondicao.SelectedValue == "Funcionario")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecFuncionario2", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_func", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvfuncionario.DataSource = ds;
                gvfuncionario.DataBind();
                Conexao.fecharConexao();
            }
            if (ddlcondicao.SelectedValue == "Departamento")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecFuncionario", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_dep", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvfuncionario.DataSource = ds;
                gvfuncionario.DataBind();
                Conexao.fecharConexao();
            }
        }
    }
}