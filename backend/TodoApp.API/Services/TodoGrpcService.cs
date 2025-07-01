using AutoMapper;
using Grpc.Core;
using TodoApp.Domain.Abstractions;
using TodoApp.Domain.Entities;
using TodoGrpc;

namespace TodoApp.API.Services;

public class TodoGrpcService(ITodoService todoService, IMapper mapper) : TodoService.TodoServiceBase
{
    public override async Task<TodoMessage> Create(TodoMessage request, ServerCallContext context)
    {
        var todo = mapper.Map<Todo>(request);
        var result = await todoService.CreateAsync(todo);
        var response = mapper.Map<TodoMessage>(result);
        return response;
    }

    public override async Task Get(EmptyMessage request, IServerStreamWriter<TodoMessage> responseStream, ServerCallContext context)
    {
        var enumerator = todoService.GetAllAsync().GetAsyncEnumerator();
        
        while (await enumerator.MoveNextAsync() || !context.CancellationToken.IsCancellationRequested)
        {
            var todo = enumerator.Current;
            if (todo is null) return;
            var mapped = mapper.Map<TodoMessage>(todo);
            await responseStream.WriteAsync(mapped);
        } 
    }

    public override async Task<TodoMessage> Update(TodoMessage request, ServerCallContext context)
    {
        var todo = mapper.Map<Todo>(request);
        var result = await todoService.UpdateAsync(todo);
        var response = mapper.Map<TodoMessage>(result);
        return response;
    }

    public override async Task<BoolMessage> Delete(TodoMessage request, ServerCallContext context)
    {
        var todo = mapper.Map<Todo>(request);
        var result = await todoService.DeleteAsync(todo);
        return new BoolMessage {IsSuccess = result};
    }
}