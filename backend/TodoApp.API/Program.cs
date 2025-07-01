using System.Reflection;
using Microsoft.EntityFrameworkCore;
using TodoApp.API.Configurations.Mapper;
using TodoApp.API.Services;
using TodoApp.Application.Abstractions.Repositories;
using TodoApp.Application.Services;
using TodoApp.Domain.Abstractions;
using TodoApp.Infrastructure;
using TodoApp.Infrastructure.Repositories;

var builder = WebApplication.CreateBuilder(args);

builder.WebHost.ConfigureKestrel(options =>
{ options.Listen(System.Net.IPAddress.Any, 50051); });

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseInMemoryDatabase("TodoInMemoryDb"));

builder.Services.AddScoped<ITodoService, TodoService>();
builder.Services.AddScoped<ITodoRepository, TodoRepository>();

builder.Services.AddGrpc();
builder.Services.AddAutoMapper(Assembly.GetAssembly(typeof(TodoGrpcService)));

var app = builder.Build();

app.MapGrpcService<TodoGrpcService>();
app.Map("/", () => "Only GRPC connections are allowed.");

app.Run();