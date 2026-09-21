<%@ Page Title="Conference Program - SAIRH 2026" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Ceremony.aspx.cs" Inherits="AIE.Ceremony" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .program-container {
            max-width: 960px;
            margin: 0 auto;
        }
        .day-panel {
            display: none;
        }
        .day-panel.active {
            display: block;
        }
        .session-item {
            background: rgba(14, 28, 66, 0.45);
            border: 1px solid rgba(56, 189, 248, 0.16);
            border-radius: 18px;
            padding: 22px 26px;
            margin-bottom: 14px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            transition: all 0.3s ease;
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
        }
        .session-item:hover {
            border-color: rgba(56, 189, 248, 0.5);
            background: rgba(14, 28, 66, 0.7);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.4), 0 0 20px rgba(56, 189, 248, 0.15);
            transform: translateX(4px);
        }
        .session-time-col {
            min-width: 140px;
            display: flex;
            align-items: center;
            gap: 8px;
            color: #38bdf8;
            font-weight: 700;
            font-size: 1.05rem;
        }
        .session-main-col {
            flex: 1;
        }
        .session-title-text {
            color: #ffffff;
            font-size: 1.15rem;
            font-weight: 600;
            margin: 0;
            line-height: 1.4;
        }
        .session-track-col {
            text-align: right;
            min-width: 110px;
        }
        .track-badge {
            display: inline-block;
            padding: 5px 14px;
            border-radius: 9999px;
            font-size: 0.85rem;
            font-weight: 700;
            letter-spacing: 0.5px;
        }
        .track-a-badge {
            background: rgba(56, 189, 248, 0.15);
            border: 1px solid rgba(56, 189, 248, 0.4);
            color: #38bdf8;
        }
        .track-b-badge {
            background: rgba(37, 99, 235, 0.18);
            border: 1px solid rgba(37, 99, 235, 0.4);
            color: #93c5fd;
        }
        .track-c-badge {
            background: rgba(16, 185, 129, 0.15);
            border: 1px solid rgba(16, 185, 129, 0.4);
            color: #6ee7b7;
        }
        .track-main-badge {
            background: rgba(245, 158, 11, 0.15);
            border: 1px solid rgba(245, 158, 11, 0.4);
            color: #fcd34d;
        }
        @media (max-width: 768px) {
            .session-item {
                flex-direction: column;
                align-items: flex-start;
                gap: 12px;
            }
            .session-time-col, .session-track-col {
                min-width: unset;
                text-align: left;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Program Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">Scientific Agenda</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                Conference Program
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            
            <p class="text-secondary mx-auto mt-4" style="max-width: 750px; font-size: 1.15rem; line-height: 1.8;">
                Explore the complete 2-day conference agenda. Filter by day or track to view specialized imaging and artificial intelligence sessions.
            </p>
        </div>
    </section>

    <!-- Interactive Schedule -->
    <section class="py-5" aria-label="Program Details">
        <div class="container program-container">
            <!-- Day Selection Tabs -->
            <div class="agenda-day-tabs">
                <button type="button" class="agenda-day-btn active" onclick="selectDay('day1', this)">
                    <i class="fa fa-calendar-check-o mr-1"></i> Day 1 – AI, Clinical Excellence &amp; Innovation
                </button>
                <button type="button" class="agenda-day-btn" onclick="selectDay('day2', this)">
                    <i class="fa fa-calendar-check-o mr-1"></i> Day 2 – Advancing Radiology &amp; AI Systems
                </button>
            </div>

            <!-- Track Filter Pills -->
            <div class="track-filter-bar">
                <button type="button" class="track-filter-pill active" onclick="filterTrack('all', this)">All Sessions</button>
                <button type="button" class="track-filter-pill" onclick="filterTrack('track-a', this)">Track A: AI &amp; RadBix</button>
                <button type="button" class="track-filter-pill" onclick="filterTrack('track-b', this)">Track B: Clinical Radiology</button>
                <button type="button" class="track-filter-pill" onclick="filterTrack('track-c', this)">Track C: Education &amp; Quality</button>
            </div>

            <!-- DAY 1 CONTENT -->
            <div id="day1-panel" class="day-panel active">
                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 07:00–09:30</div>
                    <div class="session-main-col"><h3 class="session-title-text">Registration &amp; Ceremony</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Advanced Neuro MRI (fMRI &amp; DTI)</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Pediatric Imaging Safety</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Radiology Workforce Training in the AI Era</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:30–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Future of AI in Radiology</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Generative AI for Imaging Workflow</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Trauma CT Optimization</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Advanced Spine &amp; Shoulder MRI</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Quality Indicators &amp; Global Benchmarking</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">National AI Healthcare Framework</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Emergency Ultrasound Updates</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Publishing in High-Impact Journals</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">AI Ethics &amp; Regulations</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Digital Mammography &amp; AI Screening</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Innovation in Radiology – Ideation Lab</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>
            </div>

            <!-- DAY 2 CONTENT -->
            <div id="day2-panel" class="day-panel">
                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">RadBix Infrastructure &amp; Digital Twin</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Cardiac MRI – AI-Assisted Techniques</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Predictive Analytics in Radiology</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Simulation-Based Radiology Training</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">AI Workflow Automation in Radiology</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Dual-Energy CT: 2026 Advances</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">AI Quality Assurance Frameworks</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Cybersecurity in Medical Imaging</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">IVR Trauma Innovations</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Grant Writing for Imaging Research</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">AI Protocols for MRI/CT</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">Track A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">NM Contamination Control &amp; Safety</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">Track B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Innovation &amp; Emerging Research</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">Track C</span></div>
                </div>

                <div class="session-item track-main">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 15:00–16:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">Closing Ceremony &amp; Strategic Partnership Signing</h3></div>
                    <div class="session-track-col"><span class="track-badge track-main-badge">Main Hall</span></div>
                </div>
            </div>
        </div>
    </section>

    <!-- Client-side Interactive Filter Script -->
    <script>
        function selectDay(dayId, btn) {
            document.querySelectorAll('.agenda-day-btn').forEach(function(b) { b.classList.remove('active'); });
            btn.classList.add('active');
            
            document.querySelectorAll('.day-panel').forEach(function(p) { p.classList.remove('active'); });
            document.getElementById(dayId + '-panel').classList.add('active');
        }

        function filterTrack(trackClass, btn) {
            document.querySelectorAll('.track-filter-pill').forEach(function(b) { b.classList.remove('active'); });
            btn.classList.add('active');

            var items = document.querySelectorAll('.session-item');
            items.forEach(function(item) {
                if (trackClass === 'all') {
                    item.style.display = 'flex';
                } else if (item.classList.contains(trackClass)) {
                    item.style.display = 'flex';
                } else {
                    item.style.display = 'none';
                }
            });
        }

        // Auto-select track from URL query parameter
        window.addEventListener('DOMContentLoaded', function() {
            var params = new URLSearchParams(window.location.search);
            var track = params.get('track');
            if (track) {
                var targetPill = document.querySelector('.track-filter-pill[onclick*="track-' + track.toLowerCase() + '"]');
                if (targetPill) {
                    targetPill.click();
                }
            }
        });
    </script>
</asp:Content>
