<%@ Page Title="Dashboard - SAIRH 2026" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AIE.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dash-nav-pills .nav-link {
            background: rgba(14, 28, 66, 0.45);
            border: 1px solid rgba(56, 189, 248, 0.16);
            border-radius: 12px;
            color: #cbd5e1;
            padding: 14px 20px;
            margin-bottom: 12px;
            font-weight: 600;
            transition: all 0.25s ease;
        }
        .dash-nav-pills .nav-link:hover {
            background: rgba(14, 28, 66, 0.7);
            border-color: rgba(56, 189, 248, 0.35);
            color: #ffffff;
        }
        .dash-nav-pills .nav-link.active {
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.4), rgba(37, 99, 235, 0.4)) !important;
            border-color: #38bdf8 !important;
            color: #ffffff !important;
            box-shadow: 0 0 20px rgba(56, 189, 248, 0.25);
        }
        .dash-content-card {
            background: rgba(14, 28, 66, 0.5);
            border: 1px solid rgba(56, 189, 248, 0.18);
            border-radius: 18px;
            padding: 35px;
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            color: #e2e8f0;
            font-size: 1.05rem;
            line-height: 1.8;
            min-height: 380px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Dashboard Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">Attendee Portal</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                Dashboard
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
        </div>
    </section>

    <!-- Main Dashboard Tabs -->
    <section class="py-5" aria-label="Dashboard Tabs">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 mb-4">
                    <div class="nav flex-column dash-nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">
                            <i class="fa fa-home mr-2"></i> Home
                        </a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                            <i class="fa fa-user mr-2"></i> Profile
                        </a>
                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                            <i class="fa fa-envelope mr-2"></i> Messages
                        </a>
                        <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i class="fa fa-cog mr-2"></i> Settings
                        </a>
                    </div>
                </div>

                <div class="col-lg-9 col-md-8">
                    <div class="dash-content-card">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <h3 class="text-white font-weight-bold mb-3">Home Overview</h3>
                                <p>Welcome to your summit dashboard. Access session agendas, track your registered workshops, and view live conference updates.</p>
                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <h3 class="text-white font-weight-bold mb-3">Profile Information</h3>
                                <p>Manage your conference credentials, institutional affiliation, and specialty area in radiology and health innovation.</p>
                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <h3 class="text-white font-weight-bold mb-3">Notifications &amp; Messages</h3>
                                <p>Review official communications, program updates, and notifications regarding your summit participation.</p>
                            </div>
                            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                <h3 class="text-white font-weight-bold mb-3">Account Settings</h3>
                                <p>Configure your notification preferences, privacy settings, and language choices.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
