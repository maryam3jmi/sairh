<%@ Page Title="Contact Us - SAIRH 2026" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AIE.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-info-card {
            background: rgba(14, 28, 66, 0.45);
            border: 1px solid rgba(56, 189, 248, 0.18);
            border-radius: 22px;
            padding: 35px 30px;
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            height: 100%;
        }
        .contact-channel-item {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 24px;
        }
        .contact-channel-icon {
            width: 48px;
            height: 48px;
            border-radius: 14px;
            background: linear-gradient(135deg, rgba(2, 132, 199, 0.25), rgba(37, 99, 235, 0.25));
            border: 1px solid rgba(56, 189, 248, 0.3);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #38bdf8;
            font-size: 1.25rem;
            flex-shrink: 0;
        }
        .contact-channel-label {
            font-size: 0.85rem;
            color: #94a3b8;
            margin-bottom: 2px;
        }
        .contact-channel-val {
            font-size: 1.05rem;
            color: #ffffff;
            font-weight: 600;
        }
        .contact-channel-val a {
            color: #ffffff;
            text-decoration: none;
            transition: color 0.2s ease;
        }
        .contact-channel-val a:hover {
            color: #38bdf8;
        }
        .contact-form-glass {
            background: rgba(14, 28, 66, 0.55);
            border: 1px solid rgba(56, 189, 248, 0.2);
            border-radius: 22px;
            padding: 35px;
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
        }
        .contact-form-glass .form-group {
            margin-bottom: 20px;
        }
        .contact-form-glass label {
            color: #cbd5e1;
            font-size: 0.92rem;
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
        }
        .contact-form-glass .form-control {
            background: rgba(4, 8, 22, 0.65) !important;
            border: 1px solid rgba(56, 189, 248, 0.25) !important;
            color: #ffffff !important;
            border-radius: 12px;
            padding: 12px 18px;
            font-size: 1rem;
            transition: all 0.25s ease;
        }
        .contact-form-glass .form-control:focus {
            border-color: #38bdf8 !important;
            box-shadow: 0 0 15px rgba(56, 189, 248, 0.3) !important;
            background: rgba(6, 12, 32, 0.85) !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <section class="py-5 simpler-main-bg" aria-label="Contact Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">Inquiries &amp; Collaboration</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                Get in touch
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            
            <p class="text-secondary mx-auto mt-4" style="max-width: 800px; font-size: 1.2rem; line-height: 1.8;">
                For more information about Saudi First AI Summit in Radiology and Health Innovation, including details on participation, sponsorship opportunities, and general inquiries, please contact us:
            </p>
        </div>
    </section>

    <!-- 2-Column Contact Section -->
    <section class="py-5" aria-label="Contact Information and Form">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <!-- Left Column: Contact Channels -->
                <div class="col-lg-5 mb-4 mb-lg-0">
                    <div class="contact-info-card">
                        <h3 class="text-white font-weight-bold mb-4" style="font-size: 1.35rem;">
                            Summit Coordination Office
                        </h3>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa fa-envelope-o"></i></div>
                            <div>
                                <div class="contact-channel-label">Official Inquiries Email</div>
                                <div class="contact-channel-val"><a href="mailto:iie@iau.edu.sa">iie@iau.edu.sa</a></div>
                            </div>
                        </div>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa-brands fa-x-twitter"></i></div>
                            <div>
                                <div class="contact-channel-label">X (Twitter) Official Handle</div>
                                <div class="contact-channel-val"><a href="https://twitter.com/IAU_VPSRI" target="_blank">@IAU_VPSRI</a></div>
                            </div>
                        </div>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa fa-map-marker"></i></div>
                            <div>
                                <div class="contact-channel-label">Summit Location</div>
                                <div class="contact-channel-val">Grand Hyatt Alkhobar Hotel and Residences</div>
                            </div>
                        </div>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa fa-mobile"></i></div>
                            <div>
                                <div class="contact-channel-label">Official Apps</div>
                                <div class="contact-channel-val">SRAS-IAU (iOS &amp; Android)</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right Column: Form -->
                <div class="col-lg-6">
                    <div class="contact-form-glass">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div id="contact_form">
                                    <div class="form-group">
                                        <label for="<%= TxtName.ClientID %>">Your Full Name</label>
                                        <asp:TextBox ID="TxtName" runat="server" CssClass="form-control" placeholder="e.g. Dr. Abdullah Al-Ghamdi"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="<%= TxtEmail.ClientID %>">Your Email Address</label>
                                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" placeholder="name@institution.edu.sa"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="<%= TxtMobile.ClientID %>">Your Mobile Number</label>
                                        <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control" placeholder="+966 5X XXX XXXX"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="<%= TxtMessage.ClientID %>">Your Message</label>
                                        <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-control" placeholder="How can we assist you regarding the summit?" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                    </div>

                                    <div id="submit" class="mt-4">
                                        <asp:LinkButton ID="BtnSubmit" runat="server" CssClass="cyan-glow-btn w-100 py-3" OnClick="BtnSubmit_Click">
                                            <i class="fa fa-paper-plane mr-2"></i> Submit Message
                                        </asp:LinkButton>
                                    </div>

                                    <div id="divError" class="alert alert-danger text-danger mt-3" runat="server" visible="false">Test Messages</div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Concluding Note -->
    <section class="py-5" aria-label="Closing Statement">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div class="glass-card p-4" style="border-radius: 20px;">
                        <p class="text-light mb-0" style="font-size: 1.15rem; line-height: 1.8;">
                            We encourage all interested parties to reach out with questions or requests for further
                            information. We look forward to collaborating with you to make the Annual Innovation
                            Event a resounding success, empowering the next generation of innovators and
                            contributing to the sustainable future of Saudi Arabia’s economy.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
