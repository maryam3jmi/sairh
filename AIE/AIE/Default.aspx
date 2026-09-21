<%@ Page Title="Saudi First AI Summit in Radiology and Health Innovation" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AIE.Default" %>

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
            text-align: left;
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
    <!-- Hero Section (Refined, Clean & User-Friendly) -->
    <section aria-label="Summit Hero" class="simpler-main-bg text-light py-5">
        <div class="container text-center py-4">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="d-inline-flex mb-3">
                        <span class="glass-pill glass-pill-cyan">
                            <i class="fa fa-circle text-info mr-1" style="font-size: 0.6rem;"></i> Saudi First AI Summit in Radiology &amp; Health Innovation
                        </span>
                    </div>

                    <h1 class="display-4 font-weight-bold text-white mb-2" style="letter-spacing: -0.5px; line-height: 1.25;">
                        Saudi First AI Summit in Radiology and Health Innovation
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
                            <span>Grand Hyatt Alkhobar</span>
                        </div>
                        <div class="hero-meta-item">
                            <i class="fa fa-calendar"></i>
                            <span>Kingdom of Saudi Arabia • 2026</span>
                        </div>
                        <div class="hero-meta-item">
                            <i class="fa fa-layer-group"></i>
                            <span>3 Dedicated Scientific Tracks</span>
                        </div>
                    </div>

                    <!-- Main Action CTAs -->
                    <div class="d-flex justify-content-center gap-3 flex-wrap mt-2">
                        <a href="Publication" class="cyan-glow-btn px-4 py-3">
                            <i class="fa fa-compass mr-1"></i> Explore Tracks
                        </a>
                        <a href="Ceremony" class="glass-pill px-4 py-3 text-white" style="font-size: 1rem;">
                            <i class="fa fa-calendar-check-o mr-1"></i> Conference Program
                        </a>
                        <a href="#qr-section" class="glass-pill px-4 py-3 text-white" style="font-size: 1rem;">
                            <i class="fa fa-qrcode mr-1"></i> Participation Pass
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Dedicated Live Summit Telemetry & Session Hub (Clean, No Nested Iframe) -->
    <section id="dashboard-section" aria-label="Live Summit Hub" class="py-5">
        <div class="container">
            <div class="glass-card p-4 p-md-5" style="border-radius: 22px;">
                <div class="d-flex align-items-center justify-content-between mb-4 pb-3 border-bottom border-secondary flex-wrap gap-2">
                    <div>
                        <span class="glass-pill glass-pill-cyan mr-2">● LIVE SUMMIT HUB</span>
                        <span class="text-white font-weight-bold ml-2" style="font-size: 1.1rem;">RadBix AI Telemetry &amp; Session Portal</span>
                    </div>
                    <div>
                        <a href="Dashboard.aspx" class="text-info font-weight-bold" style="text-decoration: none;">
                            Open Attendee Dashboard <i class="fa fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </div>

                <div class="row g-3">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="hub-track-card">
                            <div>
                                <span class="hub-track-pill">Track A</span>
                                <h3 class="hub-track-title">Artificial Intelligence &amp; RadBix</h3>
                                <p class="text-secondary small mb-3">Imaging AI algorithms, digital transformation, workflow automation, and cybersecurity.</p>
                            </div>
                            <a href="Publication" class="text-info small font-weight-bold">Track Overview &rarr;</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="hub-track-card">
                            <div>
                                <span class="hub-track-pill">Track B</span>
                                <h3 class="hub-track-title">Advanced Clinical Radiology</h3>
                                <p class="text-secondary small mb-3">MRI, CT, Ultrasound, X-Ray, IVR, Nuclear Medicine, and Mammography 2026.</p>
                            </div>
                            <a href="Publication" class="text-info small font-weight-bold">Track Overview &rarr;</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="hub-track-card">
                            <div>
                                <span class="hub-track-pill">Track C</span>
                                <h3 class="hub-track-title">Education, Quality &amp; Research</h3>
                                <p class="text-secondary small mb-3">Publishing high-impact papers, global quality benchmarks, and innovation labs.</p>
                            </div>
                            <a href="Publication" class="text-info small font-weight-bold">Track Overview &rarr;</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Aims & Alignment with Saudi Vision 2030 (Vision 2030 5-Pillar Matrix) -->
    <section aria-label="Saudi Vision 2030 Aims" class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <span class="glass-pill glass-pill-cyan mb-3 d-inline-block">Strategic National Vision</span>
                <h2 class="text-white font-weight-bold display-5 mb-3">
                    Aims &amp; Alignment with Saudi Vision 2030
                </h2>
                <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            </div>

            <div class="vision-pillar-grid">
                <!-- Pillar 01 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">PILLAR 01</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-heartbeat"></i></div>
                    </div>
                    <h3 class="pillar-title">AI-Driven Diagnostic Imaging</h3>
                    <p class="pillar-text">
                        Enhance healthcare innovation through AI-driven diagnostic imaging.
                    </p>
                </div>

                <!-- Pillar 02 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">PILLAR 02</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-cogs"></i></div>
                    </div>
                    <h3 class="pillar-title">Workflow Transformation</h3>
                    <p class="pillar-text">
                        Support national digital transformation in radiology workflows.
                    </p>
                </div>

                <!-- Pillar 03 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">PILLAR 03</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-globe"></i></div>
                    </div>
                    <h3 class="pillar-title">Global Collaborations</h3>
                    <p class="pillar-text">
                        Strengthen global collaborations with leading radiology &amp; AI institutions.
                    </p>
                </div>

                <!-- Pillar 04 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">PILLAR 04</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-flask"></i></div>
                    </div>
                    <h3 class="pillar-title">Research &amp; AI Development</h3>
                    <p class="pillar-text">
                        Advance research, innovation, and AI development across healthcare.
                    </p>
                </div>

                <!-- Pillar 05 -->
                <div class="vision-pillar-card">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <span class="pillar-number">PILLAR 05</span>
                        <div class="pillar-icon-box mb-0"><i class="fa fa-users"></i></div>
                    </div>
                    <h3 class="pillar-title">Future-Ready Workforce</h3>
                    <p class="pillar-text">
                        Build a future-ready workforce of radiologists, technologists, and data scientists.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- QR Code for Participation in the SRAS -->
    <section id="qr-section" aria-label="QR Code Participation" class="py-5">
        <div class="container">
            <div class="text-center mb-4">
                <span class="glass-pill glass-pill-cyan mb-3 d-inline-block">Delegate Registration</span>
                <h2 class="text-white font-weight-bold display-5 mb-3">
                    QR code for participation in the SRAS
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
                        <h4 class="text-white font-weight-bold mb-2">Scan to Participate &amp; Download SRAS App</h4>
                        <p class="text-secondary mb-4 mx-auto" style="max-width: 540px; font-size: 1.05rem; line-height: 1.6;">
                            Download the official SRAS app for instant delegate badge verification, live program schedule notifications, and interactive participation.
                        </p>
                        <div class="d-flex justify-content-center gap-3 flex-wrap">
                            <a href="https://apps.apple.com/us/app/annual-innovation-event/id6475714056" target="_blank" class="btn btn-outline-info rounded-pill px-4 py-2">
                                <i class="fa-brands fa-apple mr-1"></i> Apple App Store
                            </a>
                            <a href="https://play.google.com/store/apps/details?id=sa.edu.iau.annualinnovationevent" target="_blank" class="btn btn-outline-info rounded-pill px-4 py-2">
                                <i class="fa-brands fa-android mr-1"></i> Google Play
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Venue Location Showcase -->
    <section aria-label="Venue Location" class="py-5 mb-4">
        <div class="container">
            <div class="text-center mb-4">
                <span class="glass-pill glass-pill-cyan mb-3 d-inline-block">Summit Location</span>
                <h2 class="text-white font-weight-bold display-5 mb-3">
                    Venue Location
                </h2>
                <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="venue-showcase-card">
                        <img src="<%= ResolveUrl("~/Content/images/Home-Image/Grand Hyatt Alkhobar logo.svg") %>"
                             class="d-block img-fluid mx-auto mb-4"
                             alt="Grand Hyatt Alkhobar">
                        <h3 class="text-white font-weight-bold mb-2">Grand Hyatt Alkhobar Hotel and Residences</h3>
                        <p class="text-secondary mb-4" style="font-size: 1.1rem;">
                            Al Olaya, Alkhobar, Eastern Province, Kingdom of Saudi Arabia
                        </p>
                        <a href="https://maps.google.com/?q=Grand+Hyatt+Alkhobar" target="_blank" class="btn btn-outline-info rounded-pill px-4 py-2">
                            <i class="fa fa-map-marker mr-1"></i> View on Google Maps
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
