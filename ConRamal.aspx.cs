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
    public partial class ConRamal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Conexao.obterConexao();


            DataSet ds = new DataSet();

            SqlCommand cm = new SqlCommand("SpSelecRamalT", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            gvramal.DataSource = ds;
            gvramal.DataBind();
            Conexao.fecharConexao();
        }

        protected void btnprocurar_Click(object sender, EventArgs e)
        {
            if (ddlcondicao.SelectedValue == "Ramal")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecRamal2", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@desc_ramal", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvramal.DataSource = ds;
                gvramal.DataBind();
                Conexao.fecharConexao();
            }
            if (ddlcondicao.SelectedValue == "Departamento")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpSelecRamal", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@nome_dep", txtprocurar.Text);
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvramal.DataSource = ds;
                gvramal.DataBind();
                Conexao.fecharConexao();
            }

        }
    }
}