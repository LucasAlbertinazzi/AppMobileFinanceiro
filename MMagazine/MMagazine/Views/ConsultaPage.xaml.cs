using Acr.UserDialogs;
using Microcharts;
using Main.Models;
using Main.Services;
using Newtonsoft.Json;
using SkiaSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Internals;
using Xamarin.Forms.Xaml;

namespace Main.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ConsultaPage : ContentPage
    {
        public double x, y;
        public double currentScale;
        public double startScale;
        public double xOffset;
        public double yOffset;

        public ConsultaPage()
        {
            InitializeComponent();

            DateTime primeirodiadomes = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            lblDataInicio.Text = primeirodiadomes.ToString("dd/MM/yy");
            lblDataFinal.Text = DateTime.Now.Date.ToString("dd/MM/yy");
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

        public void PopularGrafico(ConsultaVendas ConsultaVendas)
        {
            List<ChartEntry> chartEntries = new List<ChartEntry>();

            decimal total = ConsultaVendas.lojas.Sum(x => x.fluxo + x.total);

            foreach (var item in ConsultaVendas.lojas)
            {
                chartEntries.Add(new ChartEntry(float.Parse((item.fluxo / total * 100).ToString()))
                {
                    Label = item.codLoja.ToString(),
                    ValueLabel = item.fluxo.ToString("C"),
                    Color = SKColor.Parse("#DF7F30")
                });
                chartEntries.Add(new ChartEntry(float.Parse((item.total / total * 100).ToString()))
                {
                    Label = string.Empty,
                    ValueLabel = item.total.ToString("C"),
                    Color = SKColor.Parse("#003791")
                });

                chartEntries.Add(new ChartEntry(0) { Color = SKColor.Empty });
            }

            gConsulta.Chart = new BarChart()
            {
                Entries = chartEntries,
                LabelTextSize = 20,
                Margin = 35,
                LabelOrientation = Orientation.Vertical,
                LabelColor = SKColor.Parse("#333"),
            };
        }

        protected override async void OnAppearing()
        {
            UserDialogs.Instance.ShowLoading("Buscando");
            await CarregaConsultaAsync();
            UserDialogs.Instance.HideLoading();
        }

        private void dtInicio_Unfocused(object sender, FocusEventArgs e)
        {
            lblDataInicio.Text = ((DatePicker)sender).Date.ToString("dd/MM/yy");
        }

        private void dtFinal_Unfocused(object sender, FocusEventArgs e)
        {
            lblDataFinal.Text = ((DatePicker)sender).Date.ToString("dd/MM/yy");
        }

        private void dtInicio_Tapped(object sender, EventArgs e)
        {
            dtInicio.Focus();
        }

        private void dtFinal_Tapped(object sender, EventArgs e)
        {
            dtFinal.Focus();
        }

        private async void btnBuscar_Clicked(object sender, EventArgs e)
        {
            UserDialogs.Instance.ShowLoading("Buscando");
            await CarregaConsultaAsync();
            UserDialogs.Instance.HideLoading();
        }

        private async Task CarregaConsultaAsync()
        {
            try
            {
                string inicio = Convert.ToDateTime(lblDataInicio.Text).ToString("yyyy-MM-dd");
                string final = Convert.ToDateTime(lblDataFinal.Text).ToString("yyyy-MM-dd");

                HttpResponseMessage response = await RestService.GetAsync($"/api/consulta-venda?dataInicio={inicio}&dataFim={final}");

                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    ConsultaVendas modelo = JsonConvert.DeserializeObject<ConsultaVendas>(await response.Content.ReadAsStringAsync());
                    PopularGrafico(modelo);
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

        private void PinchGestureRecognizer_PinchUpdated(object sender, PinchGestureUpdatedEventArgs e)
        {
            if (e.Status == GestureStatus.Started)
            {
                startScale = Content.Scale;
                Content.AnchorX = 0;
                Content.AnchorY = 0;
            }
            if (e.Status == GestureStatus.Running)
            {
                currentScale += (e.Scale - 1) * startScale;
                currentScale = Math.Max(1, currentScale);

                double renderedX = Content.X + xOffset;
                double deltaX = renderedX / Width;
                double deltaWidth = Width / (Content.Width * startScale);
                double originX = (e.ScaleOrigin.X - deltaX) * deltaWidth;

                double renderedY = Content.Y + yOffset;
                double deltaY = renderedY / Height;
                double deltaHeight = Height / (Content.Height * startScale);
                double originY = (e.ScaleOrigin.Y - deltaY) * deltaHeight;

                double targetX = xOffset - (originX * Content.Width) * (currentScale - startScale);
                double targetY = yOffset - (originY * Content.Height) * (currentScale - startScale);

                Content.TranslationX = targetX.Clamp(-Content.Width * (currentScale - 1), 0);
                Content.TranslationY = targetY.Clamp(-Content.Height * (currentScale - 1), 0);

                Content.Scale = currentScale;
            }
            if (e.Status == GestureStatus.Completed)
            {
                xOffset = Content.TranslationX;
                yOffset = Content.TranslationY;
            }
        }
    }
}