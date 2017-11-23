using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using Camada_Acesso_aos_Dados;

namespace Camada_Modelo
{
  public  class Cls_Estudante_Adm
    {
    //--------------- Este Metodo é para Inserir Um Estudante da pre --------
        public int Inserir_Tuma(string Mes_Emissao, string Ano_Emissao, string Idade, string Curso, string Classe, string Genero)
        {

            Dados objDados = new Dados();
            SqlCommand cmd = new SqlCommand("Inseri_Turma_Sala", objDados.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Nome", Mes_Emissao);
            cmd.Parameters.AddWithValue("@Sobre_Nome", Ano_Emissao);
            cmd.Parameters.AddWithValue("@Nome_Completo", Idade);
            cmd.Parameters.AddWithValue("@Nome_Pai", Curso);
            cmd.Parameters.AddWithValue("@Nome_Mae", Classe);
            cmd.Parameters.AddWithValue("@Dia_Nasc", Genero);
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
                objDados.fecharConexao();
            }
          }
        public int Pesquiza(int  Senha)
        {

            Dados objDados = new Dados();
            SqlCommand cmd = new SqlCommand("Pesquiza", objDados.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Senha",Senha);
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
                objDados.fecharConexao();
            }

        }
 
    }
}
