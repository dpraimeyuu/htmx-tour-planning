var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => Results.Content(File.ReadAllText("index.html"), "text/html"));

app.Run();
