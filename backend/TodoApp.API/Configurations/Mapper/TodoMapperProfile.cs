using AutoMapper;
using TodoApp.Domain.Entities;
using TodoGrpc;

namespace TodoApp.API.Configurations.Mapper;

public class TodoMapperProfile : Profile
{
    public TodoMapperProfile()
    {
        CreateMap<TodoMessage, Todo>();
        CreateMap<Todo, TodoMessage>();
    }
}