using System;
using System.Collections.Generic;
using System.Text;
using static Main.Models.ConsultaVendas;

namespace Main.Models
{
    public class FluxoCaixa
    {
        public decimal total { get; set; }
        public int codLoja { get; set; }
        public Intervalo intervalo { get; set; }
    }
}
