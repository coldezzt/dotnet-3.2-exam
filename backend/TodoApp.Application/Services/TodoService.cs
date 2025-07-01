using TodoApp.Application.Abstractions.Repositories;
using TodoApp.Domain.Abstractions;
using TodoApp.Domain.Entities;
using TodoApp.Domain.Models;

namespace TodoApp.Application.Services;

public class TodoService(ITodoRepository repo) : ITodoService
{
    public IAsyncEnumerable<Todo> GetAllAsync() => repo.GetAllAsync();
    public Task<Todo?> CreateAsync(Todo todo) => repo.CreateAsync(todo);

    public async Task<Todo?> UpdateAsync(Todo todo)
    {
        var result = await repo.UpdateAsync(todo);
        if (result is null) return todo;
        
        return result;
    }

    public Task<bool> DeleteAsync(Todo todo) => repo.DeleteAsync(todo);
}