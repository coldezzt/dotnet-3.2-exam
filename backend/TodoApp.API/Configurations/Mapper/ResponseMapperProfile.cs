using AutoMapper;
using TodoApp.Domain.Models;
using TodoGrpc;

namespace TodoApp.API.Configurations.Mapper;

public class ResponseMapperProfile : Profile
{
    public ResponseMapperProfile()
    {
        CreateMap<Result, ResponseMessage>();
        CreateMap(typeof(Result<>), typeof(ResponseMessage));
    }
}