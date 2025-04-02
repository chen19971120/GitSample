using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;
using System.Reflection;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// builder.Services.AddDbContextPool<>(option =>
// {
//     string connectionString = builder.Configuration.GetConnectionString("db") ?? throw new Exception("連線字串不能為空值");
//     option.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString));
// });

builder.Services.AddCors(co => co.AddPolicy("CorsPolicy", pb =>
{
    pb.AllowAnyOrigin()
    .AllowAnyHeader()
    .AllowAnyMethod();
}));

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(
   options =>
   {
       options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
       {
           Name = "Authorization",
           Type = SecuritySchemeType.ApiKey,
           Scheme = "Bearer",
           BearerFormat = "JWT",
           In = ParameterLocation.Header,
           Description = "JWT Authorization"
       });

       options.AddSecurityRequirement(new OpenApiSecurityRequirement
       {
           {
               new OpenApiSecurityScheme
               {
                   Reference = new OpenApiReference
                   {
                       Type = ReferenceType.SecurityScheme,
                       Id = "Bearer"
                   }
               },
               Array.Empty<string>()
           }
       });
       var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
       options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
   }
);

var app = builder.Build();

app.UseSwagger();
app.UseSwaggerUI();

app.UseCors("CorsPolicy");
app.UseHttpsRedirection();
app.UseAuthorization();

app.MapControllers();

app.MapGet("/v1/version", () =>
{
    return Results.Json(new
    {
        Code = 0,
        Message = "成功",
        Data = new
        {
            project = "cyberSecurity-system",
            version = "0.00.19",
            env = app.Environment.EnvironmentName
        }
    });
}).WithTags("(0)").WithName("version");

app.Run();
