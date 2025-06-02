using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Sale_Book.Startup))]
namespace Sale_Book
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
