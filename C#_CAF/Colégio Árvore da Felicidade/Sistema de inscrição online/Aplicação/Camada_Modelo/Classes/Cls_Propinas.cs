using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using Camada_Acesso_aos_Dados;
using System.Threading.Tasks;

namespace Camada_Modelo.Classes
{
   public class Cls_Propinas
   
   {
            public int Inseri_Propinas
            (string Nivel, decimal Preco,decimal Multa,decimal Total)
        {
            Conexao Obj_Propina = new Conexao();
            SqlCommand cmd = new SqlCommand("Inserir_Propina", Obj_Propina.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Nível", Nivel);
            cmd.Parameters.AddWithValue("@Preço", Preco);
            cmd.Parameters.AddWithValue("@Multa", Multa);
            cmd.Parameters.AddWithValue("@Total", Total);
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
                Obj_Propina.fecharConexao();
            }
        }
        public int Actualiza_Propinas
            (int Id, decimal Preco, decimal Multa, decimal Total)
        {
            Conexao Obj_Propina = new Conexao();
            SqlCommand cmd = new SqlCommand("Actualiza_Propina", Obj_Propina.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Nivel", Id);
            cmd.Parameters.AddWithValue("@Preco", Preco);
            cmd.Parameters.AddWithValue("@Multa", Multa);
            cmd.Parameters.AddWithValue("@Total",Total);
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
                Obj_Propina.fecharConexao();
            }
        }                         
    }
}
