using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Professor:Pessoa
    {
        private int codigoProfessor;
        private DateTime dataCadastro;

        public int Codigopessoa
        {
            get { return codigoProfessor; }
            set { codigoProfessor = value; }
        }
        public DateTime Datacadastro
        {
            get { return dataCadastro; }
            set { dataCadastro = value; }
        }

    }
}
