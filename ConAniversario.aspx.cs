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
    public partial class ConAniversario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conexao.obterConexao();


            DataSet ds = new DataSet();

            SqlCommand cm = new SqlCommand("SpNiverAno", Conexao.conn);
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cm);
            da.Fill(ds);
            gvdAniversario.DataSource = ds;
            gvdAniversario.DataBind();
            lbmsg.Text = "Todos os Aniversariante(s)";
            Conexao.fecharConexao();

        }

        protected void ddlcondicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlcondicao.SelectedValue == "Hoje")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpNiverHoje", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                gvdAniversario.EmptyDataText = "Não Existe nenhum Aniversariante Para Hoje...";
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvdAniversario.DataSource = ds;
                gvdAniversario.DataBind();
                
                lbmsg.Text = "Aniversariante(s) de Hoje";
                Conexao.fecharConexao();
            }
            if (ddlcondicao.SelectedValue == "Mes")
            {
                Conexao.obterConexao();
                DataSet ds = new DataSet();
                SqlCommand cm = new SqlCommand("SpNiverMes", Conexao.conn);
                cm.CommandType = CommandType.StoredProcedure;
                gvdAniversario.EmptyDataText = "Não Existe Aniversariante no Mês...";
                SqlDataAdapter da = new SqlDataAdapter(cm);
                da.Fill(ds);
                gvdAniversario.DataSource = ds;
                gvdAniversario.DataBind();
                lbmsg.Text = "Aniversariante(s) do Mês";
                Conexao.fecharConexao();

            }
        }

    }
}