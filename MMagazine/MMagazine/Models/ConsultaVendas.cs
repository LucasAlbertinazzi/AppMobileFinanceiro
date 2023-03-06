using System;
using System.Collections.Generic;

namespace Main.Models
{
    public class ConsultaVendas
    {
        public List<Loja> lojas { get; set; }
        public Intervalo intervalo { get; set; }
    }

    public class Intervalo
    {
        public DateTime dataInicio { get; set; }
        public DateTime dataFim { get; set; }
    }

    public class Loja
    {
        public int codLoja { get; set; }
        public string loja { get; set; }
        public decimal total { get; set; }
        public decimal cancelado { get; set; }
        public decimal fluxo { get; set; }
    }
}
