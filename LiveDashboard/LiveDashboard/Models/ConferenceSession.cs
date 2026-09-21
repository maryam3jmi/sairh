namespace LiveDashboard.Models
{
    public class ConferenceSession
    {
        public int Id { get; set; }

        public string TitleAr { get; set; } = string.Empty;
        public string TitleEn { get; set; } = string.Empty;

        public string SpeakerNameAr { get; set; } = string.Empty;
        public string SpeakerNameEn { get; set; } = string.Empty;

        public string SpeakerJobTitleAr { get; set; } = string.Empty;
        public string SpeakerJobTitleEn { get; set; } = string.Empty;

        public string OrganizationAr { get; set; } = string.Empty;
        public string OrganizationEn { get; set; } = string.Empty;

        public string RoomNameAr { get; set; } = string.Empty;
        public string RoomNameEn { get; set; } = string.Empty;

        public string SpeakerImage { get; set; } = string.Empty;

        public DateTime StartDateTime { get; set; }

        public DateTime EndDateTime { get; set; }
    }
}