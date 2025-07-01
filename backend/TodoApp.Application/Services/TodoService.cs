using TodoApp.Application.Abstractions.Repositories;
using TodoApp.Domain.Abstractions;
using TodoApp.Domain.Entities;
using TodoApp.Domain.Models;

namespace TodoApp.Application.Services;

public class TodoService(ITodoRepository repo) : ITodoService
{
    public Task<IAsyncEnumerable<Todo>> GetAllAsync() => repo.GetAllAsync();

    public async Task<Result<Todo?>> CreateAsync(Todo todo)
    {
        var x = await repo.CreateAsync(todo);
        return new Result<Todo?>
        {
            IsSuccess = x != null,
            Errors = [],
            Data = x
        };
    }

    public async Task<Result<Todo?>> UpdateAsync(Todo todo)
    {
        var x = await repo.UpdateAsync(todo);
        return new Result<Todo?>
        {
            IsSuccess = x != null,
            Errors = [],
            Data = x
        };
    }

    public async Task<Result> DeleteAsync(Todo todo)
    {
        var x = await repo.DeleteAsync(todo);
        return new Result
        {
            IsSuccess = true,
            Errors = []
        };
    }
}