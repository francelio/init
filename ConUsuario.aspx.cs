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
    public partial class ConUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conexao.obterConexao();


            DataSet ds = new DataSet();

            SqlCommand cm = new SqlCommand("SpSelecUsuarioT", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);

            gvusuario.DataSource = ds;
            gvusuario.DataBind();

            Conexao.fecharConexao();

        }

        protected void btnprocurar_Click(object sender, EventArgs e)
        {
            if (ddlcondicao.SelectedValue == "Permissao")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecUsuario2", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@permissao", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvusuario.DataSource = ds;
                gvusuario.DataBind();
                Conexao.fecharConexao();
            }
            if (ddlcondicao.SelectedValue == "Departamento")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecUsuario", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_dep", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvusuario.DataSource = ds;
                gvusuario.DataBind();
                Conexao.fecharConexao();
            }


        }
    }
}


