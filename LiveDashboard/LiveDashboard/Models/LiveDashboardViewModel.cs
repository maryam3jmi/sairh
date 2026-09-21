namespace LiveDashboard.Models
{
    public class LiveDashboardViewModel
    {
        public List<ConferenceSession> Sessions { get; set; } = new();

        public DateTime CurrentDateTime { get; set; } = DateTime.Now;
    }
}