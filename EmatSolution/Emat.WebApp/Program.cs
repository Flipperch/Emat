var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

FastReport.Utils.RegisteredObjects.AddConnection(typeof(MsSqlDataConnection));
app.UseFastReport();

app.Run();

public class MsSqlDataConnection : FastReport.Data.DataConnectionBase
{
    public override string QuoteIdentifier(string value, System.Data.Common.DbConnection connection) => "\"" + value + "\"";

    public override Type GetConnectionType() => typeof(System.Data.SqlClient.SqlConnection);

    public override Type GetParameterType() => typeof(System.Data.SqlDbType);

    public override System.Data.Common.DbDataAdapter GetAdapter(string selectCommand, System.Data.Common.DbConnection connection, FastReport.Data.CommandParameterCollection parameters)
    {
        System.Data.SqlClient.SqlDataAdapter adapter = new System.Data.SqlClient.SqlDataAdapter(selectCommand, connection as System.Data.SqlClient.SqlConnection);
        foreach (FastReport.Data.CommandParameter p in parameters)
        {
            System.Data.SqlClient.SqlParameter parameter = adapter.SelectCommand.Parameters.Add(p.Name, (System.Data.SqlDbType)p.DataType, p.Size);
            parameter.Value = p.Value;
        }
        return adapter;
    }
}
