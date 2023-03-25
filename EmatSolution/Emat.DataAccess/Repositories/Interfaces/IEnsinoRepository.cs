using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories.Interfaces
{
    public interface IEnsinoRepository
    {
        Task<EnsinoModel?> GetEnsinoByIdAsync(string id);
        Task<IEnumerable<EnsinoModel>> GetEnsinosAsync();
    }
}