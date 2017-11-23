using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Pessoa
    {

        private int codigoPessoa;
        private string nome, nomePai, nomeMae, email, fotografia, morada, telefone, genero, estadoCivil;
        private DateTime dataNascimento;


        public int CodigoPessoa
        {

            set { codigoPessoa = value; }
            get { return codigoPessoa; }
        }


        public string Nome
        {

            set { nome = value; }
            get { return nome; }
        }

        public string NomePai
        {

            set { nomePai = value; }
            get { return nomePai; }
        }

        public string NomeMae
        {

            set { nomeMae = value; }
            get { return nomeMae; }
        }


        public string Email
        {
            set { email = value; }
            get { return email; }
        }


        public string Fotografia
        {

            set { fotografia = value; }
            get { return fotografia; }
        }

        public string Morada
        {

            set { morada = value; }
            get { return morada; }
        }

        public string Telefone
        {

            set { telefone = value; }
            get { return telefone; }
        }

        public string Genero
        {

            set { genero = value; }
            get { return genero; }
        }

        public string EstadoCivil
        {

            set { estadoCivil = value; }
            get { return estadoCivil; }
        }

        public DateTime DataNascimento
        {

            set { dataNascimento = value; }
            get { return dataNascimento; }
        }

    }
}
