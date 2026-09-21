using LiveDashboard.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Text.Json;

namespace LiveDashboard.Controllers
{
    public class HomeController : Controller
    {
        private readonly IWebHostEnvironment _environment;
        private readonly ILogger<HomeController> _logger;

        public HomeController(
            IWebHostEnvironment environment,
            ILogger<HomeController> logger)
        {
            _environment = environment;
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {
            var now = DateTime.Now;
            var sessions = await LoadSessionsAsync();

            var liveSessions = sessions
                .Where(session =>
                    session.StartDateTime <= now &&
                    session.EndDateTime > now)
                .OrderBy(session => session.StartDateTime);

            var upcomingSessions = sessions
                .Where(session => session.StartDateTime > now)
                .OrderBy(session => session.StartDateTime);

            var displayedSessions = liveSessions
                .Concat(upcomingSessions)
                .ToList();

            var viewModel = new LiveDashboardViewModel
            {
                Sessions = displayedSessions,
                CurrentDateTime = now
            };

            return View(viewModel);
        }

        private async Task<List<ConferenceSession>> LoadSessionsAsync()
        {
            var filePath = Path.Combine(
                _environment.ContentRootPath,
                "Data",
                "sessions.json");

            if (!System.IO.File.Exists(filePath))
            {
                _logger.LogWarning(
                    "Sessions file was not found at {FilePath}.",
                    filePath);

                return new List<ConferenceSession>();
            }

            try
            {
                await using var stream = System.IO.File.OpenRead(filePath);

                var options = new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                };

                var sessions =
                    await JsonSerializer.DeserializeAsync<List<ConferenceSession>>(
                        stream,
                        options);

                return sessions ?? new List<ConferenceSession>();
            }
            catch (JsonException exception)
            {
                _logger.LogError(
                    exception,
                    "The sessions JSON file contains invalid data.");

                return new List<ConferenceSession>();
            }
            catch (IOException exception)
            {
                _logger.LogError(
                    exception,
                    "The sessions JSON file could not be read.");

                return new List<ConferenceSession>();
            }
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(
            Duration = 0,
            Location = ResponseCacheLocation.None,
            NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel
            {
                RequestId =
                    Activity.Current?.Id ??
                    HttpContext.TraceIdentifier
            });
        }
    }
}