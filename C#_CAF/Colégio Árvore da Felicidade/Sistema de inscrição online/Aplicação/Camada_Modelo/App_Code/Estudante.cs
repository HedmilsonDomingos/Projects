using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Estudante:Pessoa
    {
        
        private int codigoEstudante;

               
        public int CodigoEstudante
        {

            set { codigoEstudante = value; }
            get { return codigoEstudante; }
        }


    }
}
