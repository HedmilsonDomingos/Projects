using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Sala
    {
        private int codigoSala, numeroLugares;
        private string designacao;


        public int CodigoSala
        {

            set { codigoSala = value; }
            get { return codigoSala; }
        }

        public int NumeroLugares
        {

            set { numeroLugares = value; }
            get { return numeroLugares; }
        }
        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }
           
    }
}
