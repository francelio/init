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
    public partial class ConDepartamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conexao.obterConexao();


            DataSet ds = new DataSet();

            SqlCommand cm = new SqlCommand("SpSelecDepartametoT", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            gvdepartamento.DataSource = ds;
            gvdepartamento.DataBind();
            Conexao.fecharConexao();


        }

        protected void btnprocurar_Click(object sender, EventArgs e)
        {
            if (ddlcondicao.SelectedValue == "Empresa")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecDepartameto", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_empre", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvdepartamento.DataSource = ds;
                gvdepartamento.DataBind();
                Conexao.fecharConexao();
            }
            if (ddlcondicao.SelectedValue == "Departamento")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecDepartameto2", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_dep", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvdepartamento.DataSource = ds;
                gvdepartamento.DataBind();
                Conexao.fecharConexao();
            }

        }
    }
}