using AutoMapper;
using Grpc.Core;
using TodoApp.Domain.Abstractions;
using TodoApp.Domain.Entities;
using TodoGrpc;

namespace TodoApp.API.Services;

public class TodoGrpcService(ITodoService todoService, IMapper mapper) : TodoService.TodoServiceBase
{
    public override async Task<ResponseMessage> Create(TodoMessage request, ServerCallContext context)
    {
        var todo = mapper.Map<Todo>(request);
        var result = await todoService.CreateAsync(todo);
        var response = mapper.Map<ResponseMessage>(result);
        return response;
    }

    public override async Task Get(EmptyMessage request, IServerStreamWriter<TodoMessage> responseStream, ServerCallContext context)
    {
        var result = await todoService.GetAllAsync();
        var enumerator = result.GetAsyncEnumerator();
        while (await enumerator.MoveNextAsync() || !context.CancellationToken.IsCancellationRequested)
        {
            var todo = enumerator.Current;
            await responseStream.WriteAsync(mapper.Map<TodoMessage>(todo));
        }
    }

    public override async Task<ResponseMessage> Update(TodoMessage request, ServerCallContext context)
    {
        var todo = mapper.Map<Todo>(request);
        var result = await todoService.UpdateAsync(todo);
        var response = mapper.Map<ResponseMessage>(result);
        return response;
    }

    public override async Task<ResponseMessage> Delete(TodoMessage request, ServerCallContext context)
    {
        var todo = mapper.Map<Todo>(request);
        var result = await todoService.UpdateAsync(todo);
        var response = mapper.Map<ResponseMessage>(result);
        return response;
    }
}