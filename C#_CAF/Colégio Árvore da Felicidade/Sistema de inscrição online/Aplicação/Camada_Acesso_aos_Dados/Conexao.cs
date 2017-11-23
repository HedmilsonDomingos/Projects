using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Threading.Tasks;

namespace Camada_Acesso_aos_Dados
{
    public class Conexao
    {
        private static string Conexa_Nova = @"Data Source=EDMILSON\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
        private static SqlConnection conexao = new SqlConnection(Conexa_Nova);

        public SqlConnection abreConexao()
        {
            if (conexao.State == ConnectionState.Closed)
            {
                conexao.Open();
            }
            return conexao;
        }

        public SqlConnection fecharConexao()
        {
            if (conexao.State == ConnectionState.Open)
            {
                conexao.Close();
            }
            return conexao;
        }

    }
}
