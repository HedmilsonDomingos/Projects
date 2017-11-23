using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Camada_Acesso_aos_Dados 
{
   public  class Dados
    {
       private static string BD_PrincipalConnectionString = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Escola;Integrated Security=True";
       private static SqlConnection conexao = new SqlConnection(BD_PrincipalConnectionString); 

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
            if(conexao.State == ConnectionState.Open)
            {
                conexao.Close();
            }
            return conexao;
        }
             
        
    }
}
