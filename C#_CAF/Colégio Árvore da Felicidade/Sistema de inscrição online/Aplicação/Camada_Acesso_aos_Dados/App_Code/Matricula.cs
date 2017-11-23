using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Matricula
    {
        private DateTime dataMatricula;

        public DateTime DataMatricula
        {

            set { dataMatricula = value; }
            get { return dataMatricula; }
        }

    }
}
