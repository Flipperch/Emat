using Dapper;
using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories
{
    public class AlunoRepository : IAlunoRepository
    {
        private readonly DbSession _session;

        public AlunoRepository(DbSession dbSession) => _session = dbSession;

        public async Task<AlunoModel?> GetAlunoByIdAsync(string id)
        {
            string sql = "SELECT * FROM vwAluno WHERE ID = ID";
            var result = (await _session.Connection.QueryAsync<AlunoModel>(sql, new { ID = id })).FirstOrDefault();
            return result;
        }

        public async Task<IEnumerable<AlunoModel>> GetAlunosAsync()
        {
            string sql = "SELECT * FROM vwAluno";
            var result = await _session.Connection.QueryAsync<AlunoModel>(sql);
            return result;
        }
    }
}
