<%@ Page Title="Exhibition & Partner Participation - SAIRH 2026" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="AIE.Schedules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .pavilion-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 24px;
        }
        .pavilion-card {
            background: rgba(14, 28, 66, 0.45);
            border: 1px solid rgba(56, 189, 248, 0.18);
            border-radius: 20px;
            padding: 30px 24px;
            display: flex;
            align-items: flex-start;
            gap: 20px;
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            transition: all 0.35s ease;
        }
        .pavilion-card:hover {
            border-color: rgba(56, 189, 248, 0.5);
            background: rgba(14, 28, 66, 0.7);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.45), 0 0 25px rgba(56, 189, 248, 0.2);
            transform: translateY(-4px);
        }
        .pavilion-icon-box {
            width: 52px;
            height: 52px;
            border-radius: 14px;
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.25), rgba(37, 99, 235, 0.25));
            border: 1px solid rgba(56, 189, 248, 0.3);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #38bdf8;
            font-size: 1.35rem;
            flex-shrink: 0;
        }
        .pavilion-badge {
            font-size: 0.8rem;
            font-weight: 800;
            color: #38bdf8;
            background: rgba(56, 189, 248, 0.12);
            padding: 3px 10px;
            border-radius: 9999px;
            display: inline-block;
            margin-bottom: 8px;
        }
        .pavilion-title {
            color: #ffffff;
            font-size: 1.25rem;
            font-weight: 700;
            margin-bottom: 6px;
            line-height: 1.4;
        }
        .pavilion-desc {
            color: #cbd5e1;
            font-size: 0.95rem;
            line-height: 1.6;
            margin: 0;
        }
        .expo-meta-banner {
            background: rgba(14, 28, 66, 0.5);
            border: 1px solid rgba(56, 189, 248, 0.2);
            border-radius: 18px;
            padding: 24px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 40px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Exhibition Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">Industry &amp; Innovation Expo</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                Exhibition &amp; Partner Participation
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            
            <p class="text-secondary mx-auto mt-4" style="max-width: 800px; font-size: 1.2rem; line-height: 1.8;">
                A premier global platform connecting leading medical technology providers, innovative startups, research institutions, and national healthcare organizations.
            </p>
        </div>
    </section>

    <!-- Exhibition Showcase -->
    <section class="py-5" aria-label="Exhibition Hall">
        <div class="container">
            <!-- Expo Meta Banner -->
            <div class="expo-meta-banner">
                <div class="d-flex align-items-center gap-3">
                    <i class="fa fa-map-marker text-info fa-2x"></i>
                    <div>
                        <div class="text-white font-weight-bold">Venue Hall</div>
                        <div class="text-secondary small">Grand Hyatt Alkhobar Exhibition Center</div>
                    </div>
                </div>
                <div class="d-flex align-items-center gap-3">
                    <i class="fa fa-users text-info fa-2x"></i>
                    <div>
                        <div class="text-white font-weight-bold">Participation Scope</div>
                        <div class="text-secondary small">6 Dedicated Participant Sectors</div>
                    </div>
                </div>
                <div>
                    <a href="Sponsors" class="btn btn-outline-info rounded-pill px-4 py-2 font-weight-bold">
                        View Summit Partners <i class="fa fa-arrow-right ml-1"></i>
                    </a>
                </div>
            </div>

            <div class="text-center mb-5">
                <h2 class="text-white font-weight-bold display-6">
                    A dedicated exhibition hall will feature:
                </h2>
            </div>

            <!-- 6 Pavilions Grid -->
            <div class="pavilion-grid">
                <!-- Pavilion 01 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-globe"></i></div>
                    <div>
                        <span class="pavilion-badge">SECTOR 01</span>
                        <h3 class="pavilion-title">International AI &amp; Radiology Companies</h3>
                        <p class="pavilion-desc">Global leaders showcasing cutting-edge diagnostic algorithms, modality hardware, and AI workflow suites.</p>
                    </div>
                </div>

                <!-- Pavilion 02 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-rocket"></i></div>
                    <div>
                        <span class="pavilion-badge">SECTOR 02</span>
                        <h3 class="pavilion-title">Digital Health Startups</h3>
                        <p class="pavilion-desc">High-growth health tech ventures presenting disruptive solutions in medical imaging automation.</p>
                    </div>
                </div>

                <!-- Pavilion 03 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-graduation-cap"></i></div>
                    <div>
                        <span class="pavilion-badge">SECTOR 03</span>
                        <h3 class="pavilion-title">Universities &amp; Research Centers</h3>
                        <p class="pavilion-desc">Academic powerhouses presenting breakthrough medical research, peer-reviewed clinical data, and pilot trials.</p>
                    </div>
                </div>

                <!-- Pavilion 04 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-institution"></i></div>
                    <div>
                        <span class="pavilion-badge">SECTOR 04</span>
                        <h3 class="pavilion-title">National Organizations</h3>
                        <p class="pavilion-desc">Strategic regulatory and national entities: SDAIA, Aramco Digital, Ministry of Health (MOH), and SFDA.</p>
                    </div>
                </div>

                <!-- Pavilion 05 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-lightbulb-o"></i></div>
                    <div>
                        <span class="pavilion-badge">SECTOR 05</span>
                        <h3 class="pavilion-title">Healthcare Innovators</h3>
                        <p class="pavilion-desc">Visionary clinical practitioners, biomedical engineers, and radiologic data pioneers driving healthcare transformation.</p>
                    </div>
                </div>

                <!-- Pavilion 06 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-heartbeat"></i></div>
                    <div>
                        <span class="pavilion-badge">SECTOR 06</span>
                        <h3 class="pavilion-title">Non-Profit Organizations</h3>
                        <p class="pavilion-desc">Societies, medical foundations, and non-profit healthcare bodies dedicated to patient safety and quality standards.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
