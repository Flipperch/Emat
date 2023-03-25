using Dapper;
using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories
{
    public class EnsinoRepository : IEnsinoRepository
    {
        private readonly DbSession _session;

        public EnsinoRepository(DbSession dbSession) => _session = dbSession;

        public async Task<EnsinoModel?> GetEnsinoByIdAsync(string id)
        {
            string sql = "SELECT * FROM vwEnsino WHERE ID = ID";
            var result = (await _session.Connection.QueryAsync<EnsinoModel>(sql, new { ID = id })).FirstOrDefault();
            return result;
        }

        public async Task<IEnumerable<EnsinoModel>> GetEnsinosAsync()
        {
            string sql = "SELECT * FROM vwEnsino";
            var result = await _session.Connection.QueryAsync<EnsinoModel>(sql);
            return result;
        }
    }
}
