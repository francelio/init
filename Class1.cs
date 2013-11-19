using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SchoolSystem
{
    public class Class1
    {
    }


     class Conexao
    {
        // vamos nos conectar ao SQL Server Express e à base de dados
        // locadora usando Windows Authentication
        

        // representa a conexão com o banco
         public static SqlConnection conn = new SqlConnection(@"Data Source=FRANCELIO; Initial Catalog=WEB ;User ID=sa; Password=123");

        // método que permite obter a conexão
        public static SqlConnection obterConexao()
        {
            // vamos criar a conexão
            

            // a conexão foi feita com sucesso?
            try
            {
                // abre a conexão e a devolve ao chamador do método
                conn.Open();
            }
            catch (SqlException sqle)
            {
                conn = null;
                string msg = sqle.Message;
                // ops! o que aconteceu?
                // uma boa idéia aqui é gravar a exceção em um arquivo de log
            }

            return conn;
        }

        public static void fecharConexao()
        {
            if (conn != null)
            {
                conn.Close();
            }
        }
    }





}

