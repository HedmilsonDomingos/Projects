using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Camada_Acesso_aos_Dados;

namespace Camada_Modelo
{
   public  class Cls_Professor
    {
       public int Inserir_Professor

           (string Nome_Completo, string NBI, string C_V)
                  
   {

       Conexao objDados = new Conexao();
       SqlCommand cmd = new SqlCommand("Inviar_CV", objDados.abreConexao());
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@Nome", Nome_Completo);
           cmd.Parameters.AddWithValue("@NBI", NBI);
           cmd.Parameters.AddWithValue("@CV", C_V);
            try
           {
               int Linhas;
               Linhas = cmd.ExecuteNonQuery();
               return Linhas;
           }
           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }
           finally
           {
               objDados.fecharConexao();
           }
       }
       public int Admitir_Prof(int Dia, string Mes, int Ano, int Codigo)
       {
           Conexao ObjAdmitir = new Conexao();
           SqlCommand cmd = new SqlCommand("Admitir_Prof", ObjAdmitir.abreConexao());
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@Dia", Dia);
           cmd.Parameters.AddWithValue("@Mes", Mes);
           cmd.Parameters.AddWithValue("@Ano", Ano);
           cmd.Parameters.AddWithValue("@Codigo_Cv", Codigo);
           try
           {
               int Linhas;
               Linhas = cmd.ExecuteNonQuery();
               return Linhas;
           }
           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }
           finally
           {
               ObjAdmitir.fecharConexao();
           }
       }
       public int Eliminar_Admicao_Prof(int id) 
       {

           Conexao ObjAdmitir = new Conexao();
           SqlCommand cmd = new SqlCommand("Eliminar_AdmIcao_Prof", ObjAdmitir.abreConexao());
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@id", id);
           cmd.ExecuteNonQuery();
           try
           {
               int Linhas;
               Linhas = cmd.ExecuteNonQuery();
               return Linhas;
           }

           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }

           finally
           {
               ObjAdmitir.fecharConexao();
           }







































       
       
       }
    }
}
