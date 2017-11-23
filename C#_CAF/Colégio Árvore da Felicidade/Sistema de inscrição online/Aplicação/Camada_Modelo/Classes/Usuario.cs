using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Threading.Tasks;
using Camada_Acesso_aos_Dados;

namespace Camada_Modelo
{
   public class Usuario
    {
       public Boolean Verificar(string Nome, string Codigo) 
       
       {
           Conexao Obj_Selicona = new Conexao();
           Boolean Verificar = false;
           SqlCommand Cmd = new SqlCommand("S_Usuario", Obj_Selicona.abreConexao());
           Cmd.CommandType = CommandType.StoredProcedure;
           Cmd.Parameters.AddWithValue("@Nome", Nome);
           Cmd.Parameters.AddWithValue("@Senha", Codigo);
        //   Cmd.Parameters.AddWithValue("@Função", Função);  
           try
           {
               SqlDataReader Leitor = Cmd.ExecuteReader(CommandBehavior.SingleRow);
               if (Leitor.Read())
                   Verificar = true;           
           }
           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }
           finally
           {
               Obj_Selicona.fecharConexao();
           }
           return Verificar;    
       }

       public void Adiciona_Usuario
           (
           string Nome,
           string Senha
            )
       {
           Conexao obj_Usuario = new Conexao();
           SqlCommand Comando = new SqlCommand("Inserir_Usuario", obj_Usuario.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Nome_Usuario", Nome);
           Comando.Parameters.AddWithValue("@Senha", Senha);
           try
           {
               Comando.ExecuteNonQuery();
           }
           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }

           finally
           {
               obj_Usuario.fecharConexao();
           }
       }
       public void Remove_Usuario   (int Senha)
       {
           Conexao obj_Usuario = new Conexao();
           SqlCommand Comando = new SqlCommand("Remover_Usuaario", obj_Usuario.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Id_Usuario", Senha);        
           try
           {
               Comando.ExecuteNonQuery();
           }
           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }
           finally
           {
               obj_Usuario.fecharConexao();
           }
       }

       public int Acutalizar_Usuario (string Nome_Usuario, string Codigo_Usuario,int Id_Usuario)
       {
           Conexao obj_Usuario = new Conexao();
           SqlCommand Comando = new SqlCommand("Actualiza_Usuario", obj_Usuario.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Nome_Usuario", Nome_Usuario);
           Comando.Parameters.AddWithValue("@Senha", Codigo_Usuario);
           Comando.Parameters.AddWithValue("@Id", Id_Usuario);


           try
           {
               int Linhas;
               Linhas = Comando.ExecuteNonQuery();
               return Linhas;
           }
           catch (SqlException erro)
           {
               throw new Exception("Erro encontrado" + erro.Message);
           }

           finally
           {
               obj_Usuario.fecharConexao();
           }     
           
      }    
    }
}
