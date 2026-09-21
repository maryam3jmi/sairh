<%@ Page Title="المعرض - القمة السعودية للذكاء الاصطناعي في الأشعة" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="AIE.Ar_Sa.Schedules" %>

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
            text-align: right;
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
            line-height: 1.5;
        }
        .pavilion-desc {
            color: #cbd5e1;
            font-size: 0.98rem;
            line-height: 1.7;
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
    <section class="py-5 simpler-main-bg" aria-label="Header">
        <div class="container text-center pt-4 pb-2">
            <span class="glass-pill glass-pill-cyan mb-3">معرض التقنية والابتكار</span>
            <h1 class="text-white font-weight-bold display-4 mb-3">
                المعرض
            </h1>
            <div style="width: 80px; height: 3px; background: linear-gradient(90deg, #38bdf8, #2563eb); margin: 0 auto; border-radius: 2px;"></div>
            
            <p class="text-secondary mx-auto mt-4" style="max-width: 800px; font-size: 1.2rem; line-height: 1.8;">
                جمهور أوسع وفرصة للمشاركين لعرض إبداعاتهم ومهاراتهم في حل المشكلات والحصول على ملاحظات وتعليقات من خبراء الصناعة ومن زملائهم
            </p>
        </div>
    </section>

    <!-- Exhibition Showcase -->
    <section class="py-5" aria-label="المعرض">
        <div class="container">
            <!-- Expo Meta Banner -->
            <div class="expo-meta-banner">
                <div class="d-flex align-items-center gap-3">
                    <i class="fa fa-map-marker text-info fa-2x"></i>
                    <div>
                        <div class="text-white font-weight-bold">مقر المعرض</div>
                        <div class="text-secondary small">مركز معارض جراند حياة الخبر</div>
                    </div>
                </div>
                <div class="d-flex align-items-center gap-3">
                    <i class="fa fa-users text-info fa-2x"></i>
                    <div>
                        <div class="text-white font-weight-bold">نطاق المشاركة</div>
                        <div class="text-secondary small">6 قطاعات مشاركة رئيسية</div>
                    </div>
                </div>
                <div>
                    <a href="Sponsors" class="btn btn-outline-info rounded-pill px-4 py-2 font-weight-bold">
                        عرض الرعاة والشركاء <i class="fa fa-arrow-left mr-1"></i>
                    </a>
                </div>
            </div>

            <div class="text-center mb-5">
                <h2 class="text-white font-weight-bold display-6">
                    ستضم قاعة العرض ما يلي:
                </h2>
            </div>

            <!-- 6 Pavilions Grid -->
            <div class="pavilion-grid">
                <!-- Pavilion 01 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-globe"></i></div>
                    <div>
                        <span class="pavilion-badge">القطاع 01</span>
                        <h3 class="pavilion-title">الشركات الدولية المتخصصة في الذكاء الاصطناعي والأشعة</h3>
                        <p class="pavilion-desc">كبريات الشركات العالمية المستعرضة لأحدث خوارزميات التشخيص الطبي وأجهزة التصوير المتقدمة.</p>
                    </div>
                </div>

                <!-- Pavilion 02 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-graduation-cap"></i></div>
                    <div>
                        <span class="pavilion-badge">القطاع 02</span>
                        <h3 class="pavilion-title">الجامعات ومراكز الأبحاث</h3>
                        <p class="pavilion-desc">المؤسسات الأكاديمية الرائدة ومراكز التميز البحثي لاستعراض الأبحاث السريرية وبراءات الاختراع.</p>
                    </div>
                </div>

                <!-- Pavilion 03 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-rocket"></i></div>
                    <div>
                        <span class="pavilion-badge">القطاع 03</span>
                        <h3 class="pavilion-title">الشركات الناشئة في مجال الصحة الرقمية</h3>
                        <p class="pavilion-desc">المشاريع الريادية الصاعدة المقدمة لحلول برمجية مبتكرة في أتمتة سير العمل الطبي ورعاية المرضى.</p>
                    </div>
                </div>

                <!-- Pavilion 04 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-institution"></i></div>
                    <div>
                        <span class="pavilion-badge">القطاع 04</span>
                        <h3 class="pavilion-title">المنظمات الوطنية</h3>
                        <p class="pavilion-desc">الجهات الحكومية والتنظيمية: سدايا، أرامكو الرقمية، وزارة الصحة، والهيئة العامة للغذاء والدواء.</p>
                    </div>
                </div>

                <!-- Pavilion 05 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-lightbulb-o"></i></div>
                    <div>
                        <span class="pavilion-badge">القطاع 05</span>
                        <h3 class="pavilion-title">المبتكرون في مجال الرعاية الصحية</h3>
                        <p class="pavilion-desc">الأطباء المبتكرون ومهندسو الطب الحيوي وعلماء البيانات الذين يطورون مستقبل طب الأشعة.</p>
                    </div>
                </div>

                <!-- Pavilion 06 -->
                <div class="pavilion-card">
                    <div class="pavilion-icon-box"><i class="fa fa-heartbeat"></i></div>
                    <div>
                        <span class="pavilion-badge">القطاع 06</span>
                        <h3 class="pavilion-title">المنظمات غير الربحية</h3>
                        <p class="pavilion-desc">الجمعيات العلمية والمؤسسات غير الربحية المعنية بسلامة المرضى وجودة الممارسات الطبية.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
