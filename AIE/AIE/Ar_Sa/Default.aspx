<%@ Page Title="القمة السعودية للذكاء الاصطناعي في الاشعة والابتكار الصحي" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AIE.Ar_Sa.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hero-meta-strip {
            display: flex;
            justify-content: center;
            gap: 28px;
            margin: 25px 0 35px 0;
            flex-wrap: wrap;
        }
        .hero-meta-item {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #cbd5e1;
            font-size: 1.05rem;
            font-weight: 500;
        }
        .hero-meta-item i {
            color: #38bdf8;
        }
        .hub-track-card {
            background: rgba(14, 28, 66, 0.4);
            border: 1px solid rgba(56, 189, 248, 0.16);
            border-radius: 14px;
            padding: 20px;
            transition: all 0.3s ease;
            text-align: right;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .hub-track-card:hover {
            border-color: #38bdf8;
            background: rgba(14, 28, 66, 0.65);
            transform: translateY(-2px);
        }
        .hub-track-pill {
            font-size: 0.8rem;
            font-weight: 700;
            color: #38bdf8;
            background: rgba(56, 189, 248, 0.12);
            padding: 3px 10px;
            border-radius: 9999px;
            display: inline-block;
            margin-bottom: 10px;
        }
        .hub-track-title {
            color: #ffffff;
            font-size: 1.05rem;
            font-weight: 600;
            margin-bottom: 8px;
            line-height: 1.4;
        }
        .qr-pass-container {
            background: rgba(14, 28, 66, 0.5);
            border: 1px solid rgba(56, 189, 248, 0.2);
            border-radius: 22px;
            padding: 40px;
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.45);
        }
        .qr-box-inner {
            width: 170px;
            height: 170px;
            background: #ffffff;
            border-radius: 18px;
            padding: 14px;
            margin: 0 auto 20px auto;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 35px rgba(56, 189, 248, 0.3);
        }
        .qr-box-inner svg {
            width: 100%;
            height: 100%;
        }
        .venue-showcase-card {
            background: rgba(14, 28, 66, 0.5);
            border: 1px solid rgba(56, 189, 248, 0.2);
            border-radius: 22px;
            padding: 45px 35px;
            text-align: center;
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.45);
        }
        .venue-showcase-card img {
            max-height: 90px;
            filter: brightness(0) invert(1);
            transition: all 0.3s ease;
        }
        .venue-showcase-card:hover img {
            filter: brightness(0) invert(1) drop-shadow(0 0 15px rgba(56, 189, 248, 0.5));
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section (Arabic) -->
    <section aria-label="Summit Hero" class="simpler-main-bg text-light py-5">
        <div class="container text-center py-4">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="d-inline-flex mb-3">
                        <span class="glass-pill glass-pill-cyan">
                            <i class="fa fa-circle text-info ml-1" style="font-size: 0.6rem;"></i> القمة السعودية الأولى للذكاء الاصطناعي في الأشعة والابتكار الصحي
                        </span>
                    </div>

                    <h1 class="display-4 font-weight-bold text-white mb-2" style="letter-spacing: -0.5px; line-height: 1.35;">
                        القمة السعودية للذكاء الاصطناعي في الاشعة والابتكار الصحي
                    </h1>

                    <div class="d-flex justify-content-center align-items-center mb-3" style="min-height: 55px;">
                        <div class="typed-strings">
                            <p>2026</p>
                        </div>
                        <div class="typed display-4 font-weight-bold text-info"></div>
                    </div>

                    <!-- Summit Quick Info Strip -->
                    <div class="hero-meta-strip">
                        <div class="hero-meta-item">
                            <i class="fa fa-map-marker"></i>
                            <span>جراند حياة الخبر</span>
                        </div>
                        <div class="hero-meta-item">
                            <i class="fa fa-calendar"></i>
                            <span>المملكة العربية السعودية • 2026</span>
                        </div>
                        <div class="hero-meta-item">
                            <i class="fa fa-layer-group"></i>
                            <span>3 مسارات علمية متخصصة</span>
                        </div>
                    </div>

                    <!-- Main Action CTAs -->
                    <div class="d-flex justify-content-center gap-3 flex-wrap mt-2">
                        <a href="Publication" class="cyan-glow-btn px-4 py-3">
                            <i class="fa fa-compass ml-1"></i> استكشاف المسارات
                        </a>
                        <a href="Ceremony" class="glass-pill px-4 py-3 text-white" style="font-size: 1rem;">
                            <i class="fa fa-calendar-check-o ml-1"></i> برنامج المؤتمر
                        </a>
                        <a href="#qr-section" class="glass-pill px-4 py-3 text-white" style="font-size: 1rem;">
                            <i class="fa fa-qrcode ml-1"></i> بطاقة المشاركة
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Carousel Slider Section -->
    <section class="py-4">
        <div class="container">
            <div class="glass-card p-2" style="border-radius: 20px; overflow: hidden;">
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="<%= ResolveUrl("~/Content/images/Home-Image/سلايدر1.png") %>" class="d-block w-100" style="border-radius: 16px;" alt="SAIRH 2026">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Dedicated Live Summit Telemetry & Session Hub -->
    <section id="dashboard-section" aria-label="Live Summit Hub" class="py-5">
        <div class="container">
            <div class="glass-card p-4 p-md-5" style="border-radius: 22px;">
                <div class="d-flex align-items-center justify-content-between mb-4 pb-3 border-bottom border-secondary flex-wrap gap-2">
                    <div>
                        <span class="glass-pill glass-pill-cyan ml-2">● البوابة المباشرة للقمة</span>
                        <span class="text-white font-weight-bold mr-2" style="font-size: 1.1rem;">منظومة RadBix وجلسات المؤتمر</span>
                    </div>
                    <div>
                        <a href="Dashboard.aspx" class="text-info font-weight-bold" style="text-decoration: none;">
                            لوحة تحكم المشاركين <i class="fa fa-arrow-left mr-1"></i>
                        </a>
                    </div>
                </div>

                <div class="row g-3">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="hub-track-card">
                            <div>
                                <span class="hub-track-pill">المسار A</span>
                                <h3 class="hub-track-title">الذكاء الاصطناعي وRadBix</h3>
                                <p class="text-secondary small mb-3">خوارزميات التصوير، والتحول الرقمي، وأتمتة سير العمل، والأمن السيبراني.</p>
                            </div>
                            <a href="Publication" class="text-info small font-weight-bold">نظرة عامة على المسار &larr;</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="hub-track-card">
                            <div>
                                <span class="hub-track-pill">المسار B</span>
                                <h3 class="hub-track-title">الأشعة السريرية المتقدمة</h3>
                                <p class="text-secondary small mb-3">الرنين المغناطيسي، والأشعة المقطعية، والموجات فوق الصوتية، وتصوير الثدي 2026.</p>
                            </div>
                            <a href="Publication" class="text-info small font-weight-bold">نظرة عامة على المسار &larr;</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="hub-track-card">
                            <div>
                                <span class="hub-track-pill">المسار C</span>
                                <h3 class="hub-track-title">التعليم والجودة والبحث</h3>
                                <p class="text-secondary small mb-3">النشر في المجلات المرموقة، ومؤشرات الجودة العالمية، ومختبرات الابتكار.</p>
                            </div>
                            <a href="Publication" class="text-info small font-weight-bold">نظرة عامة على المسار &larr;</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- الأهداف والمواءمة مع رؤية السعودية 2030 (Vision 2030 5-Pillar Matrix) -->
    <section aria-label="Strategic Goals" class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <span class="glass-pill glass-pill-cyan mb-3 d-inline-block">المواءمة الوطنية الاستراتيجية</span>
                <h2 class="text-white font-weight-bold display-5 mb-3">
                    الأهداف والمواءمة مع رؤية السعودية 2030
                </h2>
                <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            </div>

            <div class="vision-pillar-grid">
                <!-- الركيزة 01 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">الركيزة 01</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-heartbeat"></i></div>
                    </div>
                    <h3 class="pillar-title">التصوير التشخيصي بالذكاء الاصطناعي</h3>
                    <p class="pillar-text">
                        تعزيز الابتكار في الرعاية الصحية من خلال التصوير التشخيصي المدعوم بالذكاء الاصطناعي.
                    </p>
                </div>

                <!-- الركيزة 02 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">الركيزة 02</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-cogs"></i></div>
                    </div>
                    <h3 class="pillar-title">التحول الرقمي لأقسام الأشعة</h3>
                    <p class="pillar-text">
                        دعم التحول الرقمي الوطني في سير عمل أقسام الأشعة.
                    </p>
                </div>

                <!-- الركيزة 03 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">الركيزة 03</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-globe"></i></div>
                    </div>
                    <h3 class="pillar-title">التعاون العالمي الرائد</h3>
                    <p class="pillar-text">
                        توطيد التعاون العالمي مع المؤسسات الرائدة في مجالي الأشعة والذكاء الاصطناعي.
                    </p>
                </div>

                <!-- الركيزة 04 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">الركيزة 04</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-flask"></i></div>
                    </div>
                    <h3 class="pillar-title">البحث والابتكار الصحي</h3>
                    <p class="pillar-text">
                        دفع عجلة البحث والابتكار وتطوير الذكاء الاصطناعي في قطاع الرعاية الصحية.
                    </p>
                </div>

                <!-- الركيزة 05 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">الركيزة 05</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-users"></i></div>
                    </div>
                    <h3 class="pillar-title">بناء الكوادر الوطنية</h3>
                    <p class="pillar-text">
                        بناء كوادر مؤهلة ومستعدة للمستقبل تضم أطباء أشعة، وفنيين، وعلماء بيانات.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- رمز الإستجابة السريعة للمشاركة في القمة -->
    <section id="qr-section" aria-label="QR Code" class="py-5">
        <div class="container">
            <div class="text-center mb-4">
                <span class="glass-pill glass-pill-cyan mb-3 d-inline-block">المشاركة والتسجيل</span>
                <h2 class="text-white font-weight-bold display-5 mb-3">
                    رمز الإستجابة السريعة للمشاركة في القمة
                </h2>
                <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="qr-pass-container text-center">
                        <div class="qr-box-inner">
                            <svg viewBox="0 0 100 100" fill="#040816">
                                <rect x="5" y="5" width="25" height="25" fill="#040816" />
                                <rect x="9" y="9" width="17" height="17" fill="#ffffff" />
                                <rect x="13" y="13" width="9" height="9" fill="#040816" />
                                <rect x="70" y="5" width="25" height="25" fill="#040816" />
                                <rect x="74" y="9" width="17" height="17" fill="#ffffff" />
                                <rect x="78" y="13" width="9" height="9" fill="#040816" />
                                <rect x="5" y="70" width="25" height="25" fill="#040816" />
                                <rect x="9" y="74" width="17" height="17" fill="#ffffff" />
                                <rect x="13" y="78" width="9" height="9" fill="#040816" />
                                <rect x="35" y="10" width="8" height="8" fill="#040816" />
                                <rect x="48" y="10" width="14" height="8" fill="#040816" />
                                <rect x="35" y="25" width="14" height="8" fill="#040816" />
                                <rect x="10" y="35" width="8" height="14" fill="#040816" />
                                <rect x="25" y="40" width="14" height="14" fill="#040816" />
                                <rect x="45" y="35" width="12" height="12" fill="#040816" />
                                <rect x="65" y="35" width="10" height="8" fill="#040816" />
                                <rect x="82" y="35" width="8" height="14" fill="#040816" />
                                <rect x="35" y="55" width="18" height="8" fill="#040816" />
                                <rect x="60" y="50" width="15" height="15" fill="#040816" />
                                <rect x="80" y="55" width="10" height="10" fill="#040816" />
                                <rect x="35" y="70" width="10" height="20" fill="#040816" />
                                <rect x="52" y="72" width="18" height="10" fill="#040816" />
                                <rect x="75" y="75" width="15" height="15" fill="#040816" />
                            </svg>
                        </div>
                        <h4 class="text-white font-weight-bold mb-2">امسح الرمز للمشاركة وتنزيل تطبيق SRAS</h4>
                        <p class="text-secondary mb-4 mx-auto" style="max-width: 540px; font-size: 1.05rem; line-height: 1.7;">
                            قم بتنزيل تطبيق الفعالية الرسمي للاطلاع على جدول الجلسات، وتصاريح الحضور، والمشاركة التفاعلية في كافة مسارات القمة.
                        </p>
                        <div class="d-flex justify-content-center gap-3 flex-wrap">
                            <a href="https://apps.apple.com/us/app/annual-innovation-event/id6475714056" target="_blank" class="btn btn-outline-info rounded-pill px-4 py-2">
                                <i class="fa-brands fa-apple ml-1"></i> متجر آبل App Store
                            </a>
                            <a href="https://play.google.com/store/apps/details?id=sa.edu.iau.annualinnovationevent" target="_blank" class="btn btn-outline-info rounded-pill px-4 py-2">
                                <i class="fa-brands fa-android ml-1"></i> متجر جوجل Google Play
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- موقع الفعالية -->
    <section aria-label="موقع الفعالية" class="py-5 mb-4">
        <div class="container">
            <div class="text-center mb-4">
                <span class="glass-pill glass-pill-cyan mb-3 d-inline-block">مقر القمة</span>
                <h2 class="text-white font-weight-bold display-5 mb-3">
                    موقع الفعالية
                </h2>
                <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="venue-showcase-card">
                        <img src="<%= ResolveUrl("~/Content/images/Home-Image/Grand Hyatt Alkhobar logo.svg") %>"
                             class="d-block img-fluid mx-auto mb-4"
                             alt="جراند حياة الخبر">
                        <h3 class="text-white font-weight-bold mb-2">فندق ومساكن جراند حياة الخبر</h3>
                        <p class="text-secondary mb-4" style="font-size: 1.15rem;">
                            حي العليا، الخبر، المنطقة الشرقية، المملكة العربية السعودية
                        </p>
                        <a href="https://maps.google.com/?q=Grand+Hyatt+Alkhobar" target="_blank" class="btn btn-outline-info rounded-pill px-4 py-2">
                            <i class="fa fa-map-marker ml-1"></i> فتح في خرائط جوجل Google Maps
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
