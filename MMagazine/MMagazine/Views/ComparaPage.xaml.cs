using Acr.UserDialogs;
using Main.Models;
using Main.Services;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Main.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ComparaPage : ContentPage
    {
        private DateTime AnoInicio;
        private DateTime AnoFinal;
        private DateTime MesInicio;
        private DateTime MesFinal;

        private double _currentScale = 1;
        private double _startScale = 1;

        public ComparaPage()
        {
            InitializeComponent();

            DateTime primeirodiadomes = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            lblDataInicio.Text = primeirodiadomes.ToString("dd/MM/yy");
            lblDataFinal.Text = DateTime.Now.Date.ToString("dd/MM/yy");

            CarregaLojas();
        }

        #region Métodos
        private async Task CarregaLojas()
        {
            try
            {
                HttpResponseMessage responselojas = await RestService.GetAsync($"/api/lojas/consulta-lojas");

                if (responselojas.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    List<ConsultaLojas> consultaLojas = JsonConvert.DeserializeObject<List<ConsultaLojas>>(await responselojas.Content.ReadAsStringAsync());

                    consultaLojas.Add(new ConsultaLojas
                    {
                        codLoja = -1,
                        nome = "Lojas Físicas"
                    });

                    consultaLojas.Add(new ConsultaLojas
                    {
                        codLoja = 0,
                        nome = "Todas as Lojas"
                    });

                    foreach (var item in consultaLojas)
                    {
                        item.codLoja.ToString();
                    }

                    pckLoja.ItemsSource = consultaLojas.OrderBy(x => x.codLoja).ToList();
                }
                else
                {
                    await DisplayAlert("Erro", "Serviço temporiamente indisponível \n", "Aceitar");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Erro", "Serviço temporiamente indisponível \n" + ex, "Aceitar");
            }
        }

        private void Data_DateSelected(object sender, DateChangedEventArgs e)
        {
            DateTime minvalue = DateTime.Now.Date.AddDays(-100);
            DateTime maxvalue = DateTime.Now.Date.AddDays(+1);

            if (dtFinal.Date > maxvalue)
            {
                dtFinal.Date = maxvalue;
            }
            if (dtFinal.Date < dtInicio.Date)
            {
                dtFinal.Date = dtInicio.Date;
            }
            if (dtInicio.Date < minvalue)
            {
                dtInicio.Date = minvalue;
            }
        }

        #region Unfocused

        private void dtInicio_Unfocused(object sender, FocusEventArgs e)
        {
            lblDataInicio.Text = ((DatePicker)sender).Date.ToString("dd/MM/yy");
        }
        private void dtFinal_Unfocused(object sender, FocusEventArgs e)
        {
            lblDataFinal.Text = ((DatePicker)sender).Date.ToString("dd/MM/yy");
        }

        #endregion

        #region Tapped

        private void dtInicio_Tapped(object sender, EventArgs e)
        {
            dtInicio.Focus();
        }

        private void dtFinal_Tapped(object sender, EventArgs e)
        {
            dtFinal.Focus();
        }

        private void pckLoja_Tapped(object sender, EventArgs e)
        {
            pckLoja.Focus();
        }

        #endregion

        #endregion

        private async void btnBuscar_Clicked(object sender, EventArgs e)
        {
            UserDialogs.Instance.ShowLoading("Buscando");

            if (pckLoja.SelectedItem != null)
            {
                ConsultaLojas lojas = new ConsultaLojas();
                var item = pckLoja.SelectedItem;
                lojas = (ConsultaLojas)item;

                await CarregaComparaAsync(lojas.codLoja);
                await CarregaComparaAnoAsync(lojas.codLoja);
                await CarregaComparaMesAsync(lojas.codLoja);
            }
            else
            {
                await DisplayAlert("Atenção", "Selecione uma loja \n", "OK");
            }

            UserDialogs.Instance.HideLoading();
        }

        #region Busca pelo Período Selecionado
        private async Task CarregaComparaAsync(int loja)
        {
            try
            {
                string inicio = Convert.ToDateTime(lblDataInicio.Text).ToString("yyyy-MM-dd");
                string final = Convert.ToDateTime(lblDataFinal.Text).ToString("yyyy-MM-dd");

                HttpResponseMessage responsefluxo = await RestService.GetAsync($"/api/consulta-venda/fluxo-caixa?codLoja={loja}&dataInicio={inicio}&dataFim={final}");
                HttpResponseMessage responsetotalpedidos = await RestService.GetAsync($"/api/consulta-venda/cancelado?codLoja={loja}&dataInicio={inicio}&dataFim={final}");
                HttpResponseMessage responsevalorpedido = await RestService.GetAsync($"/api/consulta-venda/valor-total-pedido-cancelado?codLoja={loja}&dataInicio={inicio}&dataFim={final}");

                if (responsefluxo.StatusCode == System.Net.HttpStatusCode.OK || responsetotalpedidos.StatusCode == System.Net.HttpStatusCode.OK || responsevalorpedido.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    FluxoCaixa fluxoCaixa = JsonConvert.DeserializeObject<FluxoCaixa>(await responsefluxo.Content.ReadAsStringAsync());
                    lblFluxoCaixaS.Text = fluxoCaixa.total.ToString("C");

                    TotalPedidos totalPedidos = JsonConvert.DeserializeObject<TotalPedidos>(await responsetotalpedidos.Content.ReadAsStringAsync());
                    lblTotalPedidoS.Text = totalPedidos.totalProduto.ToString("C");
                    lblQtdePedidoS.Text = totalPedidos.contadorCodigo.ToString();

                    ValorPedidoCancelado valorPedido = JsonConvert.DeserializeObject<ValorPedidoCancelado>(await responsevalorpedido.Content.ReadAsStringAsync());
                    lblTotalCancelS.Text = valorPedido.total.ToString("C");

                    lblValorTotalS.Text = (totalPedidos.totalPagar - valorPedido.total).ToString("C");
                }
                else
                {
                    await DisplayAlert("Erro", "Serviço temporiamente indisponível \n", "Aceitar");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Erro", "Serviço temporiamente indisponível \n" + ex, "Aceitar");
            }
        }

        #endregion

        #region Trás informações de um ano anterior a data selecionada
        private async Task CarregaComparaAnoAsync(int loja)
        {
            try
            {
                AnoInicio = Convert.ToDateTime(lblDataInicio.Text).AddYears(-1).Date;
                AnoFinal = Convert.ToDateTime(lblDataFinal.Text).AddYears(-1).Date;

                string inicio = Convert.ToDateTime(AnoInicio).ToString("yyyy-MM-dd");
                string final = Convert.ToDateTime(AnoFinal).ToString("yyyy-MM-dd");

                HttpResponseMessage responsefluxo = await RestService.GetAsync($"/api/consulta-venda/fluxo-caixa?codLoja={loja}&dataInicio={inicio}&dataFim={final}");
                HttpResponseMessage responsetotalpedidos = await RestService.GetAsync($"/api/consulta-venda/cancelado?codLoja={loja}&dataInicio={inicio}&dataFim={final}");
                HttpResponseMessage responsevalorpedido = await RestService.GetAsync($"/api/consulta-venda/valor-total-pedido-cancelado?codLoja={loja}&dataInicio={inicio}&dataFim={final}");

                if (responsefluxo.StatusCode == System.Net.HttpStatusCode.OK || responsetotalpedidos.StatusCode == System.Net.HttpStatusCode.OK || responsevalorpedido.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    FluxoCaixa fluxoCaixa = JsonConvert.DeserializeObject<FluxoCaixa>(await responsefluxo.Content.ReadAsStringAsync());
                    lblFluxoCaixaA.Text = fluxoCaixa.total.ToString("C");

                    TotalPedidos totalPedidos = JsonConvert.DeserializeObject<TotalPedidos>(await responsetotalpedidos.Content.ReadAsStringAsync());
                    lblTotalPedidoA.Text = totalPedidos.totalProduto.ToString("C");
                    lblQtdePedidoA.Text = totalPedidos.contadorCodigo.ToString();

                    ValorPedidoCancelado valorPedido = JsonConvert.DeserializeObject<ValorPedidoCancelado>(await responsevalorpedido.Content.ReadAsStringAsync());
                    lblTotalCancelA.Text = valorPedido.total.ToString("C");

                    lblValorTotalA.Text = (totalPedidos.totalPagar - valorPedido.total).ToString("C");
                }
                else
                {
                    await DisplayAlert("Erro", "Serviço temporiamente indisponível \n", "Aceitar");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Erro", "Serviço temporiamente indisponível \n" + ex, "Aceitar");
            }
        }

        #endregion

        #region Trás informações de um mês anterior a data selecionada
        private async Task CarregaComparaMesAsync(int loja)
        {
            try
            {
                MesInicio = Convert.ToDateTime(lblDataInicio.Text).AddMonths(-1).Date;
                MesFinal = Convert.ToDateTime(lblDataFinal.Text).AddMonths(-1).Date;

                string inicio = Convert.ToDateTime(MesInicio).ToString("yyyy-MM-dd");
                string final = Convert.ToDateTime(MesFinal).ToString("yyyy-MM-dd");

                HttpResponseMessage responsefluxo = await RestService.GetAsync($"/api/consulta-venda/fluxo-caixa?codLoja={loja}&dataInicio={inicio}&dataFim={final}");
                HttpResponseMessage responsetotalpedidos = await RestService.GetAsync($"/api/consulta-venda/cancelado?codLoja={loja}&dataInicio={inicio}&dataFim={final}");
                HttpResponseMessage responsevalorpedido = await RestService.GetAsync($"/api/consulta-venda/valor-total-pedido-cancelado?codLoja={loja}&dataInicio={inicio}&dataFim={final}");

                if (responsefluxo.StatusCode == System.Net.HttpStatusCode.OK || responsetotalpedidos.StatusCode == System.Net.HttpStatusCode.OK || responsevalorpedido.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    FluxoCaixa fluxoCaixa = JsonConvert.DeserializeObject<FluxoCaixa>(await responsefluxo.Content.ReadAsStringAsync());
                    lblFluxoCaixaM.Text = fluxoCaixa.total.ToString("C");

                    TotalPedidos totalPedidos = JsonConvert.DeserializeObject<TotalPedidos>(await responsetotalpedidos.Content.ReadAsStringAsync());
                    lblTotalPedidoM.Text = totalPedidos.totalProduto.ToString("C");
                    lblQtdePedidoM.Text = totalPedidos.contadorCodigo.ToString();

                    ValorPedidoCancelado valorPedido = JsonConvert.DeserializeObject<ValorPedidoCancelado>(await responsevalorpedido.Content.ReadAsStringAsync());
                    lblTotalCancelM.Text = valorPedido.total.ToString("C");

                    lblValorTotalM.Text = (totalPedidos.totalPagar - valorPedido.total).ToString("C");
                }
                else
                {
                    await DisplayAlert("Erro", "Serviço temporiamente indisponível \n", "Aceitar");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Erro", "Serviço temporiamente indisponível \n" + ex, "Aceitar");
            }
        }

        #endregion
    }
}