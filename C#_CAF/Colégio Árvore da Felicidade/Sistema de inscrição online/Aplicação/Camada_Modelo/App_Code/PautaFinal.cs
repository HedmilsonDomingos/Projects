using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class PautaFinal
    {
        private int codigoPautaFinal, numeroMatricula, notaFinal;

        private string situacao;

        public int NumeroPautaFinal
        {
            get { return numeroMatricula; }
            set { numeroMatricula = value; }
        }

        public int NotaFinal
        {
            get { return notaFinal; }
            set { notaFinal = value; }
        }
        public string Situacao
        {
            get { return situacao; }
            set { situacao = value; }
        }
    }
}
