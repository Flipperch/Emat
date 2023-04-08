using Emat.WebApp.Models;
using FastReport.Web;
using Microsoft.AspNetCore.Mvc;

namespace Emat.WebApp.Controllers
{
	[Route("[controller]")]
	public class ReportTestController : Controller
	{
		private readonly IConfiguration _configuration;
		private const string _connectionId = "EmatDatabase";

		public ReportTestController(IConfiguration configuration) => _configuration = configuration;


		[HttpGet("{reportIndex:int?}")]
		public IActionResult Index(int? reportIndex = 0)
		{
			string reportFolder = "D:\\Spike\\Desktop\\EmatReportTemplates";

			ReportTestModel model = new ReportTestModel()
			{
				WebReport = new WebReport(),
				ReportsList = LoadReportsListFromFolder(CheckReportsFolder(reportFolder))
			};

			var reportToLoad = model.ReportsList[0];

			if (reportIndex >= 0 && reportIndex < model.ReportsList.Length)
			{
				reportToLoad = model.ReportsList[reportIndex.Value];
			}

			model.WebReport.Report.Load(Path.Combine(reportFolder, $"{reportToLoad}.frx"));

			if (model.WebReport.Report.Dictionary.Connections.Count > 0)
			{
				model.WebReport.Report.Dictionary.Connections[0].ConnectionString = _configuration.GetConnectionString(_connectionId);
			}


			//Aqui, implementar mecanismo para verificar parametros necessarios do frx e solicitar a UI.
			if (model.WebReport.Report.Dictionary.Parameters.Count > 0)
			{
				foreach (var parameter in model.WebReport.Report.Dictionary.Parameters)
				{

				}

				model.WebReport.Report.SetParameterValue("DataA", "01/01/2023");

				model.WebReport.Report.SetParameterValue("DataB", "31/01/2023");
			}

			return View(model);
		}


		private string CheckReportsFolder(string path)
		{
			if (Directory.Exists(path))
				return path;

			throw new Exception($"Reports Folder is not found. {path}");
		}

		private string[] LoadReportsListFromFolder(string reportsFolderPath)
		{
			List<string> filesName = new List<string>();

			string[] fileEntries = Directory.GetFiles(reportsFolderPath);

			foreach (string file in fileEntries)
			{
				var fileName = Path.GetFileNameWithoutExtension(file);
				filesName.Add(fileName);
			}

			return filesName.ToArray();
		}
	}
}
