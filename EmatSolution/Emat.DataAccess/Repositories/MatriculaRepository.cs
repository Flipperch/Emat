using Dapper;
using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories
{
    public class MatriculaRepository : IMatriculaRepository
    {
        private readonly DbSession _session;

        public MatriculaRepository(DbSession dbSession) => _session = dbSession;

        public async Task<MatriculaModel?> GetMatriculaByIdAsync(string id)
        {
            string sql = "SELECT * FROM vwMatricula WHERE ID = ID";
            var result = (await _session.Connection.QueryAsync<MatriculaModel>(sql, new { ID = id })).FirstOrDefault();
            return result;
        }

        public async Task<IEnumerable<MatriculaModel>> GetMatriculasAsync()
        {
            string sql = "SELECT * FROM vwMatricula";
            var result = await _session.Connection.QueryAsync<MatriculaModel>(sql);
            return result;
        }
    }
}
