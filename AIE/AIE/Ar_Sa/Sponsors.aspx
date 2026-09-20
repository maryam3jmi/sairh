<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Sponsors.aspx.cs" Inherits="AIE.Ar_Sa.Sponsors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light">
                        الرعاة<br>
                    </div>
                    <div style="text-align: justify;font-size:large" class=" text-white">
                       تقدم رعاية القمة السعودية للذكاء الاصطناعي في الاشعة والابتكار الصحي للمنظمات فرصة فريدة لعرض التزامها بالابتكار والتعليم وتطوير المجتمع. من خلال التوافق مع هذا الحدث،
يمكن للرعاة تعزيز رؤيتهم وسمعتهم في المنطقة.
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="partners-section">
    <div class="container">

        <!-- 1. National Authorities -->
        <div class="partner-category">
            <div class="partner-content">
                <h2>1. السلطات الوطنية والشركاء الحكوميون</h2>

                <ul>
                    <li>هيئة البحث والتطوير والابتكار (RDIA)</li>
                    <li>هيئة الحكومة الرقمية (DGA)</li>
                    <li>مستشفى الصحة الافتراضي (VHH)</li>
                    <li>الهيئة الوطنية للأمن السيبراني</li>
                    <li>الهيئة السعودية للمواصفات والمقاييس والجودة (SASO)</li>
                    <li>الهيئة العامة للغذاء والدواء (SFDA)</li>
                    <li>هيئة الرقابة النووية والإشعاعية (NRRC)</li>
                </ul>
            </div>

            <div class="partner-logos logos-authorities">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners77.png") %>" alt="RDIA">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners1.jpeg")%>" alt="Digital Government Authority">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners6.jpeg") %>"alt="Aramco Digital">

                <img src="<%= ResolveUrl("~/Content/images/sponser/partner20.jpeg") %>"alt="Ministry of Health">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners9.png") %>"alt="National Cybersecurity Authority">

                <img src="<%= ResolveUrl("~/Content/images/sponser/partners8.png") %>"alt="SASO">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners12.jpeg") %>"alt="SFDA">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners14.jpeg") %>"alt="NRRC">
            </div>
        </div>


        <!-- 2. National Innovation -->
        <div class="partner-category">
            <div class="partner-content">
                <h2>2. المنظومة الوطنية للابتكار والتكنولوجيا</h2>

                <ul>
                    <li>وادي الظهران للتقنية</li>
                    <li>مدينة الملك عبدالعزيز للعلوم والتقنية (KACST)</li>
                    <li>غرفة الشرقية</li>
                </ul>
            </div>

            <div class="partner-logos logos-innovation">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners11.png") %>"alt="Dhahran Techno Valley">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners13.png") %>"alt="KACST">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners.jpeg") %>"alt="AlSharqi Chamber">
            </div>
        </div>


        <!-- 3. Academic -->
        <div class="partner-category">
            <div class="partner-content">
                <h2>3. المؤسسات الأكاديمية والبحثية</h2>

                <ul>
                    <li>جامعة الملك فهد للبترول والمعادن (KFUPM)</li>
                    <li>المراكز البحثية والكليات الجامعية</li>
                    <li>كليات علوم الحاسب</li>
                    <li>كليات الهندسة</li>
                    <li>كليات العلوم الطبية</li>
                    <li>كليات الطب</li>
                </ul>
            </div>

            <div class="partner-logos logos-academic">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners5.png") %>"alt="KFUPM">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners10.png") %>"alt="SDAIA">
                <img src="<%= ResolveUrl("~/Content/images/sponser/PARTNER21.jpeg") %>"alt="Imam Abdulrahman Bin Faisal University">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partners4.png") %>"alt="Quality Program">
            </div>
        </div>


        <!-- 4. Industry -->
        <div class="partner-category">
            <div class="partner-content">
                <h2>4. الشركاء في قطاعي الصناعة والتكنولوجيا الطبية</h2>

                <ul>
                    <li>جي إي للرعاية الصحية (GE Healthcare)</li>
                    <li>فيليبس للرعاية الصحية (Philips Healthcare)</li>
                    <li>سيمنز هيلثينيرز (Siemens Healthineers)</li>
                    <li> شركات الأجهزة الطبية وتقنيات التصوير</li>
                    <li>مزودو حلول الذكاء الاصطناعي والصحة الرقمية</li>
                </ul>
            </div>

            <div class="partner-logos logos-industry">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partner18.png") %>"alt="GE Healthcare">
                <img src="<%= ResolveUrl("~/Content/images/sponser/5.-Philips-Healthcare.png") %>"alt="Philips Healthcare">
                <img src="<%= ResolveUrl("~/Content/images/sponser/partner17.png") %>"alt="Siemens Healthineers">
            </div>
        </div>
    </div>
</section>
    <section aria-label="section"data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class=" bg-image">
<div class="container">
     <div class="white-content-box">
         <div class="text-dark HelveticaNeueLT Arabic 75" style="font-size: 25px;">
        <p><strong class="dark-blue">دور التحالفات الاستراتيجية</strong></p>
        <p>ستدعم هذه التحالفات القمة من خلال:</p>
        <p>التعاون العلمي والمساهمة في المحتوى.</p>
        <p>مواءمة السياسات والأطر التنظيمية.</p>
        <p>عروض تقنية وتوضيحات عملية مباشرة.</p>
        <p>الابتكار وإشراك الشركات الناشئة.</p>
        <p>الشراكات البحثية والمبادرات المستقبلية.</p>
             </div>
         </div>
    </div>
</section>
</asp:Content>