using Acr.UserDialogs;
using Main.ConnectionAPI;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Main.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        private bool _IsPassword = true;

        public LoginPage()
        {
            InitializeComponent();
        }

        private async void btnLogin_Clicked(object sender, EventArgs e)
        {
            //UserDialogs.Instance.ShowLoading("");

            //Preferences.Set("Lembrar", Lembrar.IsToggled);

            //if (Lembrar.IsToggled == true)
            //{
            //    Preferences.Set("Usuário", txtusername.Text);
            //    Preferences.Set("Senha", txtsenha.Text);
            //}

            //if (!string.IsNullOrEmpty(txtusername.Text) && !string.IsNullOrEmpty(txtsenha.Text))
            //{
            //    var result = await connection.ValidaUserAsync(txtusername.Text, txtsenha.Text);
            //    if (true)
            //    {
            //        await Shell.Current.GoToAsync($"//{nameof(HomePage)}");
            //    }
            //    else
            //    {
            //        await DisplayAlert("Atenção", "Senha foi alterada, verificar!\n", "Aceitar");
            //    }
            //}
            //else
            //{
            //    await DisplayAlert("Atenção", "Informe usuário e senha\n", "Aceitar");
            //}

            await Shell.Current.GoToAsync($"//{nameof(HomePage)}");
            UserDialogs.Instance.HideLoading();
        }

        protected override void OnAppearing()
        {
            if (Preferences.Get("Lembrar", true) == true)
            {
                txtusername.Text = Preferences.Get("Usuário", "");
                txtsenha.Text = Preferences.Get("Senha", "");
                Lembrar.IsToggled = true;
            }
        }
    }
}