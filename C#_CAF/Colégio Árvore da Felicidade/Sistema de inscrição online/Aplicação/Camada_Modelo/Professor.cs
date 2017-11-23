using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using Camada_Acesso_aos_Dados;

namespace Camada_Modelo
{
  public  class Professor
    {
      public int Inviar_Curriculo
        (
         string Nome_Completo, string Nome_Pai, string Nome_Mae,
          string Mes_Nasc, string Provincia, string Municipio,
          string Estado_Civil, string NBI, string F_Media,
          string F_Superior, string F_Proficional, string Ex_Proficional,
          string Perfil, string Genero, string Classe_Leciona, string Disciplina_Leciona,
          string Conhecimento_Linguistico, string Contributo, string Morada,
          int Ano_Nasc, int Dia_Nasc, int Telefone, int Idade
         ) 
      {
          Dados objDados = new Dados();
          SqlCommand cmd = new SqlCommand("_InserirCV", objDados.abreConexao());
          cmd.CommandType = CommandType.StoredProcedure;
          cmd.Parameters.AddWithValue("@Nome_Completo", Nome_Completo);
          cmd.Parameters.AddWithValue("@Nome_Pai", Nome_Pai);
          cmd.Parameters.AddWithValue("@Nome_Mae", Nome_Mae);
          cmd.Parameters.AddWithValue("@Dia_Nasc", Dia_Nasc);
          cmd.Parameters.AddWithValue("@Mes_Nasc", Mes_Nasc);
          cmd.Parameters.AddWithValue("@Ano_Nasc", Ano_Nasc);
          cmd.Parameters.AddWithValue("@Provincia", Provincia);
          cmd.Parameters.AddWithValue("@Municipio", Municipio);
          cmd.Parameters.AddWithValue("@Morada", Morada);
          cmd.Parameters.AddWithValue("@Telefone", Telefone);
          cmd.Parameters.AddWithValue("@NBI", NBI);
          cmd.Parameters.AddWithValue("@Idade", Idade);
          cmd.Parameters.AddWithValue("@Formação_Media ", F_Media);
          cmd.Parameters.AddWithValue("@Formação_Superior", F_Superior);
          cmd.Parameters.AddWithValue("@Formação_Proficional", F_Proficional);
          cmd.Parameters.AddWithValue("@Experiencia_Proficional", Ex_Proficional);
          cmd.Parameters.AddWithValue("@Perfil", Perfil);
          cmd.Parameters.AddWithValue("@Genero", Genero);
          cmd.Parameters.AddWithValue("@Classe_Leciona", Classe_Leciona);
          cmd.Parameters.AddWithValue("@Disciplina_Leciona", Disciplina_Leciona);
          cmd.Parameters.AddWithValue("@Conhecimento_Linguistico", Conhecimento_Linguistico);
          cmd.Parameters.AddWithValue("@contributo", Contributo);
          cmd.Parameters.AddWithValue("@Estado_Civil", Estado_Civil);
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
