using Main.Views;
using Xamarin.Forms;

namespace Main
{
    public partial class App : Application
    {
        internal static readonly double ScreenWidth;
        internal static readonly double ScreenHeight;

        public App()
        {
            InitializeComponent();

            MainPage = new AppShell();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
