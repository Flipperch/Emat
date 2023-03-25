using Dapper;
using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories
{
    public class DisciplinaRepository : IDisciplinaRepository
    {
        private readonly DbSession _session;

        public DisciplinaRepository(DbSession dbSession) => _session = dbSession;

        public async Task<DisciplinaModel?> GetDisciplinaByIdAsync(string id)
        {
            string sql = "SELECT * FROM vwDisciplina WHERE ID = ID";
            var result = (await _session.Connection.QueryAsync<DisciplinaModel>(sql, new { ID = id })).FirstOrDefault();
            return result;
        }

        public async Task<IEnumerable<DisciplinaModel>> GetDisciplinasAsync()
        {
            string sql = "SELECT * FROM vwDisciplina";
            var result = await _session.Connection.QueryAsync<DisciplinaModel>(sql);
            return result;
        }
    }
}
