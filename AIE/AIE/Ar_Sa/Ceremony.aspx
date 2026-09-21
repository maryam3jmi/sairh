<%@ Page Title="برنامج المؤتمر - القمة السعودية للذكاء الاصطناعي في الأشعة" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Ceremony.aspx.cs" Inherits="AIE.Ar_Sa.Ceremony" %>

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
            text-align: right;
        }
        .session-item:hover {
            border-color: rgba(56, 189, 248, 0.5);
            background: rgba(14, 28, 66, 0.7);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.4), 0 0 20px rgba(56, 189, 248, 0.15);
            transform: translateX(-4px);
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
            line-height: 1.5;
        }
        .session-track-col {
            text-align: left;
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
                text-align: right;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">الأجندة والجدول الزمني</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                برنامج المؤتمر
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            
            <p class="text-secondary mx-auto mt-4" style="max-width: 750px; font-size: 1.2rem; line-height: 1.8;">
                استعرض جدول أعمال المؤتمر على مدار يومين كاملين. يمكنك التبديل بين الأيام أو تصفية الجلسات حسب المسار المتخصص.
            </p>
        </div>
    </section>

    <!-- Interactive Schedule -->
    <section class="py-5" aria-label="تفاصيل البرنامج">
        <div class="container program-container">
            <!-- Day Selection Tabs -->
            <div class="agenda-day-tabs">
                <button type="button" class="agenda-day-btn active" onclick="selectDay('day1', this)">
                    <i class="fa fa-calendar-check-o ml-1"></i> اليوم الأول – الذكاء الاصطناعي والتميز السريري وأسس الابتكار
                </button>
                <button type="button" class="agenda-day-btn" onclick="selectDay('day2', this)">
                    <i class="fa fa-calendar-check-o ml-1"></i> اليوم الثاني – تطوير الأشعة وأنظمة الذكاء الاصطناعي والتميز البحثي
                </button>
            </div>

            <!-- Track Filter Pills -->
            <div class="track-filter-bar">
                <button type="button" class="track-filter-pill active" onclick="filterTrack('all', this)">جميع الجلسات</button>
                <button type="button" class="track-filter-pill" onclick="filterTrack('track-a', this)">المسار A: الذكاء الاصطناعي وRadBix</button>
                <button type="button" class="track-filter-pill" onclick="filterTrack('track-b', this)">المسار B: الأشعة السريرية المتقدمة</button>
                <button type="button" class="track-filter-pill" onclick="filterTrack('track-c', this)">المسار C: التعليم والجودة والبحث</button>
            </div>

            <!-- DAY 1 CONTENT -->
            <div id="day1-panel" class="day-panel active">
                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 07:00–09:30</div>
                    <div class="session-main-col"><h3 class="session-title-text">التسجيل والحفل الافتتاحي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التصوير العصبي المتقدم بالرنين المغناطيسي (fMRI وDTI)</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">سلامة التصوير الطبي للأطفال</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">تدريب الكوادر العاملة في مجال الأشعة في عصر الذكاء الاصطناعي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:30–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">مستقبل الذكاء الاصطناعي في الأشعة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">الذكاء الاصطناعي التوليدي لسير عمل التصوير الطبي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">تحسين التصوير المقطعي المحوسب لحالات الإصابات</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التصوير بالرنين المغناطيسي المتقدم للعمود الفقري والكتف</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">مؤشرات الجودة والمعايير العالمية</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">إطار عمل الذكاء الاصطناعي الوطني في الرعاية الصحية</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">تحديثات الموجات فوق الصوتية الطارئة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">النشر في المجلات ذات التأثير العالي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">أخلاقيات وتشريعات الذكاء الاصطناعي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التصوير الشعاعي الرقمي للثدي والفحص بالذكاء الاصطناعي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">الابتكار في الأشعة – مختبر توليد الأفكار</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>
            </div>

            <!-- DAY 2 CONTENT -->
            <div id="day2-panel" class="day-panel">
                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">RadBix البنية التحتية والتوأم الرقمي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التصوير بالرنين المغناطيسي للقلب – تقنيات مدعومة بالذكاء الاصطناعي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التحليلات التنبؤية في الأشعة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 09:00–10:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التدريب على الأشعة القائم على المحاكاة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">أتمتة سير العمل بالذكاء الاصطناعي في علم الأشعة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التصوير المقطعي المحوسب ثنائي الطاقة: تطورات عام 2026</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 10:00–11:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">إطار عمل ضمان جودة الذكاء الاصطناعي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">الأمن السيبراني في التصوير الطبي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">ابتكارات IVR في مجال علاج الصدمات</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 13:00–14:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">كتابة مقترحات المنح لأبحاث التصوير الطبي</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-a">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">بروتوكولات الذكاء الاصطناعي للتصوير بالرنين المغناطيسي/التصوير المقطعي المحوسب</h3></div>
                    <div class="session-track-col"><span class="track-badge track-a-badge">المسار A</span></div>
                </div>

                <div class="session-item track-b">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">التحكم في التلوث والسلامة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-b-badge">المسار B</span></div>
                </div>

                <div class="session-item track-c">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 14:00–15:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">الابتكار والبحوث الناشئة</h3></div>
                    <div class="session-track-col"><span class="track-badge track-c-badge">المسار C</span></div>
                </div>

                <div class="session-item track-main">
                    <div class="session-time-col"><i class="fa fa-clock-o"></i> 15:00–16:00</div>
                    <div class="session-main-col"><h3 class="session-title-text">حفل الختام وتوقيع اتفاقية الشراكة الاستراتيجية</h3></div>
                    <div class="session-track-col"><span class="track-badge track-main-badge">القاعة الرئيسية</span></div>
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
