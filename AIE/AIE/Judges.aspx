<%@ Page Title="Speakers - SAIRH 2026" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Judges.aspx.cs" Inherits="AIE.Judges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .speakers-intro-card {
            background: rgba(14, 28, 66, 0.45);
            border: 1px solid rgba(56, 189, 248, 0.2);
            border-radius: 22px;
            padding: 40px;
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            margin-bottom: 45px;
            text-align: center;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.35);
        }
        .roster-card {
            background: rgba(10, 20, 48, 0.55);
            border: 1px solid rgba(56, 189, 248, 0.18);
            border-radius: 20px;
            padding: 16px;
            margin-bottom: 30px;
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
            cursor: pointer;
            position: relative;
            overflow: hidden;
            transition: all 0.35s ease;
        }
        .roster-card:hover {
            border-color: rgba(56, 189, 248, 0.5);
            transform: translateY(-4px);
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.6), 0 0 25px rgba(56, 189, 248, 0.25);
        }
        .roster-card img {
            border-radius: 14px;
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.3s ease;
        }
        .roster-card:hover img {
            transform: scale(1.01);
        }
        .roster-overlay {
            position: absolute;
            bottom: 24px;
            right: 24px;
            background: rgba(4, 8, 22, 0.85);
            border: 1px solid rgba(56, 189, 248, 0.4);
            color: #38bdf8;
            padding: 6px 14px;
            border-radius: 9999px;
            font-size: 0.85rem;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 6px;
            backdrop-filter: blur(6px);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Speakers Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">Faculty &amp; Leaders</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                Speakers
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
        </div>
    </section>

    <!-- Speakers Content -->
    <section class="py-5" aria-label="Speakers List">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="speakers-intro-card">
                        <div class="d-inline-flex mb-3">
                            <span class="glass-pill glass-pill-cyan">IAU Distinguished Panel</span>
                        </div>
                        <p class="text-white mb-0" style="font-size: 1.25rem; line-height: 1.8;">
                            The Speakers panel for the Saudi First AI Summit in Radiology and Health Innovation will consist of distinguished
                            faculty members from IAU, industry leaders, and experts from various fields.
                            Their collective expertise will ensure a rigorous and fair evaluation process.
                        </p>
                    </div>

                    <!-- Rosters Grid with Click-to-Enlarge -->
                    <div class="row justify-content-center">
                        <div class="col-md-6 mb-4">
                            <div class="roster-card" onclick="openLightbox(this)">
                                <img src="<%= ResolveUrl("~/Content/images/2025/JudgesEn/2a.png") %>" alt="Speaker Panel Roster">
                                <div class="roster-overlay"><i class="fa fa-search-plus"></i> Click to Zoom</div>
                            </div>
                        </div>

                        <div class="col-md-6 mb-4">
                            <div class="roster-card" onclick="openLightbox(this)">
                                <img src="<%= ResolveUrl("~/Content/images/2025/JudgesEn/2b.png") %>" alt="Speaker Panel Roster">
                                <div class="roster-overlay"><i class="fa fa-search-plus"></i> Click to Zoom</div>
                            </div>
                        </div>

                        <div class="col-md-6 mb-4">
                            <div class="roster-card" onclick="openLightbox(this)">
                                <img src="<%= ResolveUrl("~/Content/images/2025/JudgesEn/2c.png") %>" alt="Speaker Panel Roster">
                                <div class="roster-overlay"><i class="fa fa-search-plus"></i> Click to Zoom</div>
                            </div>
                        </div>

                        <div class="col-md-6 mb-4">
                            <div class="roster-card" onclick="openLightbox(this)">
                                <img src="<%= ResolveUrl("~/Content/images/2025/JudgesEn/2d.png") %>" alt="Speaker Panel Roster">
                                <div class="roster-overlay"><i class="fa fa-search-plus"></i> Click to Zoom</div>
                            </div>
                        </div>

                        <div class="col-md-12 mb-4">
                            <div class="roster-card" onclick="openLightbox(this)">
                                <img src="<%= ResolveUrl("~/Content/images/2025/JudgesEn/3.png") %>" alt="Keynote Speakers Roster">
                                <div class="roster-overlay"><i class="fa fa-search-plus"></i> Click to Zoom</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Lightbox Modal -->
    <div id="lightboxModal" class="lightbox-modal" onclick="closeLightbox()">
        <span class="lightbox-close">&times;</span>
        <img id="lightboxImg" class="lightbox-content" src="" alt="Enlarged Roster">
    </div>

    <script>
        function openLightbox(el) {
            var img = el.querySelector('img');
            var modal = document.getElementById('lightboxModal');
            var modalImg = document.getElementById('lightboxImg');
            modal.classList.add('active');
            modalImg.src = img.src;
        }
        function closeLightbox() {
            document.getElementById('lightboxModal').classList.remove('active');
        }
    </script>
</asp:Content>
