using Emat.Domain.Models;
using Emat.Gerenciador.Interfaces;
using Emat.Services.Interfaces;

namespace Emat.Gerenciador
{
    /// <summary>
    /// Gerenciar usuários.
    /// </summary>
    public class GerenciadorUsuarios : IGerenciadorUsuarios
    {
        private readonly IUsuarioService usuarioService;

        public GerenciadorUsuarios(IUsuarioService usuarioService)
        {
            this.usuarioService = usuarioService;
        }

        /// <summary>
        /// Obter lista de todos os usuários.
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<UsuarioModel?>> GetUsuariosAsync()
        {
            return await usuarioService.GetUsuariosAsync();
        }

        /// <summary>
        /// Obter usuário pelo Id.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<UsuarioModel?> GetUsuarioByIdAsync(string id)
        {
            return await usuarioService.GetUsuarioByIdAsync(id);
        }


    }
}
