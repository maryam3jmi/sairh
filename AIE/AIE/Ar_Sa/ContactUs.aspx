<%@ Page Title="تواصل معنا - القمة السعودية للذكاء الاصطناعي في الأشعة" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AIE.Ar_Sa.ContactUs" %>

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
            text-align: right;
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
            text-align: right;
        }
        .contact-form-glass .form-group {
            margin-bottom: 20px;
        }
        .contact-form-glass label {
            color: #cbd5e1;
            font-size: 0.95rem;
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
    <section class="py-5 simpler-main-bg" aria-label="Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">الاستفسارات والتنسيق</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                تواصل معنا
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            
            <p class="text-secondary mx-auto mt-4" style="max-width: 800px; font-size: 1.2rem; line-height: 1.8;">
                للحصول على مزيد من المعلومات حول القمة السعودية للذكاء الاصطناعي في الاشعة والابتكار لصحي بما في ذلك تفاصيل المشاركة، وفرص الرعاية، والاستفسارات العامة، يرجى الاتصال بنا على:
            </p>
        </div>
    </section>

    <!-- 2-Column Contact Section -->
    <section class="py-5" aria-label="قنوات التواصل ونموذج المراسلة">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <!-- Left Column: Contact Channels -->
                <div class="col-lg-5 mb-4 mb-lg-0">
                    <div class="contact-info-card">
                        <h3 class="text-white font-weight-bold mb-4" style="font-size: 1.35rem;">
                            مكتب أمانة القمة
                        </h3>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa fa-envelope-o"></i></div>
                            <div>
                                <div class="contact-channel-label">البريد الإلكتروني الرسمي</div>
                                <div class="contact-channel-val"><a href="mailto:iie@iau.edu.sa">iie@iau.edu.sa</a></div>
                            </div>
                        </div>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa-brands fa-x-twitter"></i></div>
                            <div>
                                <div class="contact-channel-label">الحساب الرسمي على منصة X</div>
                                <div class="contact-channel-val"><a href="https://twitter.com/IAU_VPSRI" target="_blank">@IAU_VPSRI</a></div>
                            </div>
                        </div>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa fa-map-marker"></i></div>
                            <div>
                                <div class="contact-channel-label">مقر الفعالية</div>
                                <div class="contact-channel-val">فندق ومساكن جراند حياة الخبر</div>
                            </div>
                        </div>

                        <div class="contact-channel-item">
                            <div class="contact-channel-icon"><i class="fa fa-mobile"></i></div>
                            <div>
                                <div class="contact-channel-label">تطبيقات القمة الرسمية</div>
                                <div class="contact-channel-val">SRAS-IAU (آبل وجوجل)</div>
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
                                        <label for="<%= TxtName.ClientID %>">الاسم الكامل</label>
                                        <asp:TextBox ID="TxtName" runat="server" CssClass="form-control" placeholder="مثال: د. عبدالله الغامدي"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="<%= TxtEmail.ClientID %>">عنوان البريد الإلكتروني</label>
                                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" placeholder="name@institution.edu.sa"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="<%= TxtMobile.ClientID %>">رقم المحمول</label>
                                        <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control" placeholder="+966 5X XXX XXXX"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="<%= TxtMessage.ClientID %>">نص الرسالة والاستفسار</label>
                                        <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-control" placeholder="كيف يمكننا مساعدتك بخصوص القمة والمشاركة؟" TextMode="MultiLine" Rows="4"></asp:TextBox>
                                    </div>

                                    <div id="submit" class="mt-4">
                                        <asp:LinkButton ID="BtnSubmit" runat="server" CssClass="cyan-glow-btn w-100 py-3" OnClick="BtnSubmit_Click">
                                            <i class="fa fa-paper-plane ml-2"></i> إرسال الرسالة
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
    <section class="py-5" aria-label="خاتمة">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div class="glass-card p-4" style="border-radius: 20px;">
                        <p class="text-light mb-0" style="font-size: 1.15rem; line-height: 1.8;">
                            ندعو جميع الأطراف المهتمة للتواصل معنا بأي أسئلة أو طلبات لمزيد من المعلومات. نتطلع إلى التعاون معكم لجعل الحدث السنوي للابتكار نجاحاً باهراً، وتمكين الجيل القادم من المبتكرين والمساهمة في مستقبل مستدام للاقتصاد السعودي.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
