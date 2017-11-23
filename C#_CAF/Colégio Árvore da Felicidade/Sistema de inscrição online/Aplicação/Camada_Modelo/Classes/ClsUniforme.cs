using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using Camada_Acesso_aos_Dados;

namespace Camada_Modelo
{
    public class ClsUniforme
      {
        public int ComprarUniforme
           ( string Tipo_do_Uniforme, int Numero_Borderom, string Banco_Pago, int Dia_da_Compra, string Mes_da_Compra, int Ano_da_Compra, decimal Valor_Pago, int Codigo_Estudante)
       {

           Conexao Obj_Uniforme = new Conexao();
           SqlCommand cmd = new SqlCommand("Comprar_Uniforme", Obj_Uniforme.abreConexao());
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@Dia", Dia_da_Compra);
           cmd.Parameters.AddWithValue("@Mes", Mes_da_Compra);
           cmd.Parameters.AddWithValue("@Ano", Ano_da_Compra);
           cmd.Parameters.AddWithValue("@Tipo_Uniforme", Tipo_do_Uniforme);
           cmd.Parameters.AddWithValue("@Banco", Banco_Pago);          
           cmd.Parameters.AddWithValue("@Numero_Borderom", Numero_Borderom);
           cmd.Parameters.AddWithValue("@Valor_Pago ", Valor_Pago);
           cmd.Parameters.AddWithValue("@Codigo_Estudante ", Codigo_Estudante);                                     
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
               Obj_Uniforme.fecharConexao();
           }                     

         }
 //  Aqui as Compras De Uniforme Seram Eliminadas****************************       
       public int Elimina_Compra(int Senha_da_Compra) 
          {
              Conexao obj_Elimina = new Conexao();
              SqlCommand Comando = new SqlCommand("Eliminar_Encomenda", obj_Elimina.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Codigo", Senha_da_Compra);
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
               obj_Elimina.fecharConexao();
           }
         }

//*********************Aqui os Uniformes Seram Eliminados******************************************
       public void Elimina_Uniforme(int Senha_Uniforme_Elimina)
       {
           Conexao obj_Elimina_Uniforme = new Conexao();
           SqlCommand Comando = new SqlCommand("Eliminar_Uniforme", obj_Elimina_Uniforme.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Codigo", Senha_Uniforme_Elimina);
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
               obj_Elimina_Uniforme.fecharConexao();
           }
       }

        //******************** Aqui Os Uniformes Seram Adicionados*************************************************
       public void Adiciona_Uniforme
           (
           string Titulo,
           int Quantia,
           decimal Preco
                     
           )
       {
           Conexao obj_Adiciona = new Conexao();
           SqlCommand Comando = new SqlCommand("Inseri_Novo_Uniforme", obj_Adiciona.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Titulo", Titulo);
           Comando.Parameters.AddWithValue("@Preço", Preco);
           Comando.Parameters.AddWithValue("@Quantia", Quantia);
      
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
               obj_Adiciona.fecharConexao();
           }
       }

       public int Actualiza_Preco_Uniforme
                 (
                 int Id_Uniforme,
                 decimal Preco_Novo

                 )
       {
           Conexao obj_Actualiza = new Conexao();

           SqlCommand Comando = new SqlCommand("Actualiza_Preco_Uniforme", obj_Actualiza.abreConexao());
           Comando.CommandType = CommandType.StoredProcedure;
           Comando.Parameters.AddWithValue("@Id_Uniforme", Id_Uniforme);
           Comando.Parameters.AddWithValue("@Novo_Preco", Preco_Novo);
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
               obj_Actualiza.fecharConexao();
           }
       }





        
    }
}
