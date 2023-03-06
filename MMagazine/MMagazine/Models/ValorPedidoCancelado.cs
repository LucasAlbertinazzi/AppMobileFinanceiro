using System;
using System.Collections.Generic;
using System.Text;
using static Main.Models.ConsultaVendas;

namespace Main.Models
{
    public class ValorPedidoCancelado
    {
        //Utilizado para Fluxo de caixa e Vendas a Prazo

        public decimal total { get; set; }
        public int contadorCodigo { get; set; }
        public int codLoja { get; set; }
        public Intervalo intervalo { get; set; }
    }


}
