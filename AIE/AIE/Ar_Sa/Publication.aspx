<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Publication.aspx.cs" Inherits="AIE.Ar_Sa.Publication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light">
                        المسارات<br>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section aria-label="section"data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class=" bg-image">
   <div class="container">
        <div class="white-content-box">
            <div class="text-dark HelveticaNeueLT Arabic 75" style="font-size: 25px;">
                <p><strong class="dark-blue">المسار A </strong></p>
                <p><strong class="dark-blue">الذكاء الاصطناعي، والتحول الرقمي التكنولوجي، وRadBix </strong>التركيز على الذكاء الاصطناعي في مجال التصوير، وأنظمة البيانات البيئية، وRadBix، وأتمتة سير العمل، والأمن السيبراني، وأطر عمل الذكاء الاصطناعي الوطنية.</p>
                <p><strong class="dark-blue">المسار B </strong></p>
                <p><strong class="dark-blue">الأشعة السريرية المتقدمة </strong>تم تحديث التصوير بالرنين المغناطيسي، والتصوير المقطعي المحوسب، والموجات فوق الصوتية، والأشعة السينية، والتصوير الشعاعي داخل الأوعية الدموية، والتصوير النووي، والتصوير الشعاعي للثدي وفقًا لمعايير عام 2026.</p>
                <p><strong class="dark-blue">المسار C </strong></p>
                <p><strong class="dark-blue">التعليم والجودة والبحث والابتكار </strong>مناهج البحث، والنشر، ومعايير الجودة، والتدريب القائم على المحاكاة، ومختبرات الابتكار.</p>
            </div>
        </div>
    </div>
</section>
</asp:Content>
