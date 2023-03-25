using Dapper;
using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly DbSession _session;

        public UsuarioRepository(DbSession dbSession) => _session = dbSession;

        public async Task<UsuarioModel?> GetUsuarioByIdAsync(string id)
        {
            //string sql = "SELECT * FROM vwUsuario";
            string sql = "SELECT * FROM vwUsuario WHERE ID = ID";
            var result = (await _session.Connection.QueryAsync<UsuarioModel>(sql, new { ID = id })).FirstOrDefault();
            return result;
        }

        public async Task<IEnumerable<UsuarioModel>> GetUsuariosAsync()
        {
            string sql = "SELECT * FROM vwUsuario";
            var result = await _session.Connection.QueryAsync<UsuarioModel>(sql);
            return result;
        }

        public async Task UpdateUsuarioAsync(UsuarioModel usuario)
        {
            string sql = "";
            var result = await _session.Connection.ExecuteAsync(sql);
        }
    }
}
