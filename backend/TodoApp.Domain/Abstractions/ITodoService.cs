using TodoApp.Domain.Entities;
using TodoApp.Domain.Models;

namespace TodoApp.Domain.Abstractions;

public interface ITodoService
{
    public Task<IAsyncEnumerable<Todo>> GetAllAsync();
    public Task<Result<Todo?>> CreateAsync(Todo todo);
    public Task<Result<Todo?>> UpdateAsync(Todo todo);
    public Task<Result> DeleteAsync(Todo todo);
}