<%@ Page Title="Conference Track Overview - SAIRH 2026" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Publication.aspx.cs" Inherits="AIE.Publication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .track-deck-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 26px;
        }
        .track-deck-card {
            background: rgba(14, 28, 66, 0.5);
            border: 1px solid rgba(56, 189, 248, 0.18);
            border-radius: 22px;
            padding: 35px 28px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            transition: all 0.35s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
        }
        .track-deck-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #38bdf8, #2563eb);
            opacity: 0.7;
        }
        .track-deck-card:hover {
            border-color: rgba(56, 189, 248, 0.5);
            background: rgba(14, 28, 66, 0.75);
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.5), 0 0 30px rgba(56, 189, 248, 0.25);
            transform: translateY(-5px);
        }
        .track-deck-pill {
            font-size: 0.85rem;
            font-weight: 800;
            padding: 5px 16px;
            border-radius: 9999px;
            display: inline-block;
            margin-bottom: 18px;
            letter-spacing: 0.5px;
        }
        .pill-a {
            background: rgba(56, 189, 248, 0.15);
            border: 1px solid rgba(56, 189, 248, 0.4);
            color: #38bdf8;
        }
        .pill-b {
            background: rgba(37, 99, 235, 0.18);
            border: 1px solid rgba(37, 99, 235, 0.4);
            color: #93c5fd;
        }
        .pill-c {
            background: rgba(16, 185, 129, 0.15);
            border: 1px solid rgba(16, 185, 129, 0.4);
            color: #6ee7b7;
        }
        .track-deck-title {
            color: #ffffff;
            font-size: 1.4rem;
            font-weight: 700;
            line-height: 1.4;
            margin-bottom: 14px;
        }
        .track-deck-desc {
            color: #cbd5e1;
            font-size: 1.05rem;
            line-height: 1.7;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Tracks Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">Scientific Excellence</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                Conference Track Overview
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            <p class="text-secondary mx-auto mt-4" style="max-width: 750px; font-size: 1.15rem; line-height: 1.8;">
                Explore the three specialized summit tracks uniting artificial intelligence pioneers, clinical imaging specialists, and healthcare education leaders.
            </p>
        </div>
    </section>

    <!-- 3 Tracks Interactive Deck -->
    <section class="py-5" aria-label="Track Cards">
        <div class="container">
            <div class="track-deck-grid">
                <!-- Track A -->
                <div class="track-deck-card">
                    <div>
                        <span class="track-deck-pill pill-a">Track A</span>
                        <h2 class="track-deck-title">
                            Artificial Intelligence, Digital Technology Transformation &amp; RadBix
                        </h2>
                        <p class="track-deck-desc">
                            Focus on AI in imaging, data ecosystems, RadBix, workflow automation, cybersecurity, and national AI frameworks.
                        </p>
                        <div class="modality-chip-list mb-4">
                            <span class="modality-chip">AI in Imaging</span>
                            <span class="modality-chip">Data Ecosystems</span>
                            <span class="modality-chip">RadBix Platform</span>
                            <span class="modality-chip">Workflow Automation</span>
                            <span class="modality-chip">Cybersecurity</span>
                            <span class="modality-chip">National AI Frameworks</span>
                        </div>
                    </div>
                    <div>
                        <a href="Ceremony?track=A" class="btn btn-outline-info rounded-pill w-100 py-2 font-weight-bold">
                            View Track A Program <i class="fa fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </div>

                <!-- Track B -->
                <div class="track-deck-card">
                    <div>
                        <span class="track-deck-pill pill-b">Track B</span>
                        <h2 class="track-deck-title">
                            Advanced Clinical Radiology
                        </h2>
                        <p class="track-deck-desc">
                            MRI, CT, Ultrasound, X-Ray, IVR, NM, Mammography updated to 2026 standards.
                        </p>
                        <div class="modality-chip-list mb-4">
                            <span class="modality-chip">MRI (2026 Standards)</span>
                            <span class="modality-chip">CT Imaging</span>
                            <span class="modality-chip">Ultrasound</span>
                            <span class="modality-chip">X-Ray</span>
                            <span class="modality-chip">Interventional Radiology (IVR)</span>
                            <span class="modality-chip">Nuclear Medicine (NM)</span>
                            <span class="modality-chip">Mammography</span>
                        </div>
                    </div>
                    <div>
                        <a href="Ceremony?track=B" class="btn btn-outline-info rounded-pill w-100 py-2 font-weight-bold">
                            View Track B Program <i class="fa fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </div>

                <!-- Track C -->
                <div class="track-deck-card">
                    <div>
                        <span class="track-deck-pill pill-c">Track C</span>
                        <h2 class="track-deck-title">
                            Education, Quality, Research &amp; Innovation
                        </h2>
                        <p class="track-deck-desc">
                            Research methods, publishing, quality standards, simulation-based training, and innovation labs.
                        </p>
                        <div class="modality-chip-list mb-4">
                            <span class="modality-chip">Research Methods</span>
                            <span class="modality-chip">High-Impact Publishing</span>
                            <span class="modality-chip">Quality Standards</span>
                            <span class="modality-chip">Simulation-Based Training</span>
                            <span class="modality-chip">Innovation Labs</span>
                        </div>
                    </div>
                    <div>
                        <a href="Ceremony?track=C" class="btn btn-outline-info rounded-pill w-100 py-2 font-weight-bold">
                            View Track C Program <i class="fa fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
