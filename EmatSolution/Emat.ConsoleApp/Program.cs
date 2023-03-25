using Emat.DataAccess;
using Emat.DataAccess.Repositories;
using Emat.DataAccess.Repositories.Interfaces;
using Emat.Gerenciador;
using Emat.Gerenciador.Interfaces;
using Emat.Services;
using Emat.Services.Interfaces;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

using IHost host = Host.CreateDefaultBuilder(args)
    .ConfigureHostConfiguration(configHost =>
    {
        configHost.SetBasePath(Directory.GetCurrentDirectory());
        configHost.AddJsonFile("appsettings.json", optional: true);
        configHost.AddEnvironmentVariables(prefix: "PREFIX_");
        configHost.AddCommandLine(args);
    })
    .ConfigureServices(services =>
    {
        //DataAccess
        services.AddTransient<DbSession>();
        services.AddTransient<IUsuarioRepository, UsuarioRepository>();

        //Services
        services.AddTransient<IUsuarioService, UsuarioService>();

        //Applications
        services.AddTransient<IGerenciadorUsuarios, GerenciadorUsuarios>();
    })
    .Build();

Console.WriteLine("Flipper Emat Console!");

ExibirListaUsuarios(host.Services);

ExibirUsuario(host.Services);

await host.RunAsync();



//Usuários
static async void ExibirListaUsuarios(IServiceProvider serviceProvider)
{
    var gerenciadorUsuarios = serviceProvider.GetRequiredService<IGerenciadorUsuarios>();

    var lista = await gerenciadorUsuarios.GetUsuariosAsync();

    foreach (var usuario in lista)
    {
        Console.WriteLine($"ID: {usuario?.ID} - Nome: {usuario?.Nome} - RG: {usuario?.Rg}");
    }

    Console.WriteLine($"Quantidade de usuários: {lista.Count()}");
}

static async void ExibirUsuario(IServiceProvider serviceProvider)
{
    Console.WriteLine("Informe a Id...");

    var id = Console.ReadLine();

    var gerenciadorUsuarios = serviceProvider.GetRequiredService<IGerenciadorUsuarios>();
    var usuario = await gerenciadorUsuarios.GetUsuarioByIdAsync(id);

    if (usuario != null)
    {
        Console.WriteLine($"ID: {usuario?.ID} - Nome: {usuario?.Nome} - RG: {usuario?.Rg}");
    }
}
