var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () =>
{
    var massage = Environment.GetEnvironmentVariable("APP_MESSAGE") ?? "Hello, World!";
    return Results.Ok(new { message = massage });
});

app.MapGet("/health", () =>
{
    return Results.Ok(new { status = "Healthy" });
});

app.Run("http://0.0.0.0:5000");