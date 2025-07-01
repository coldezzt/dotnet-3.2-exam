using System.Reflection;
using TodoApp.API.Configurations.Mapper;
using TodoApp.API.Services;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddGrpc();
builder.Services.AddEntityFrameworkInMemoryDatabase();
builder.Services.AddAutoMapper(Assembly.GetAssembly(typeof(TodoGrpcService)));

var app = builder.Build();

app.MapGrpcService<TodoGrpcService>();

app.Run();