<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AIE.Ar_Sa.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light HelveticaNeueLT Arabic 75 Bold">
                        القمة السعودية للذكاء الاصطناعي في الاشعة والابتكار الصحي<br>

                        <div class="typed-strings">
                            <p> 2026 </p>

                        </div>
                        <div class="typed"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <section>
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <%-- <div class="carousel-item active">
                    <img src="../Content/images/2025/SliderAr/1.png" class="d-block w-100" alt="...">
                </div>--%>
                <div class="carousel-item active">
                    <img src="<%= ResolveUrl("~/Content/images/Home-Image/سلايدر1.png") %>" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
    </section>
    <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
                <div class="d-flex flex-column align-items-center justify-content-start">
<div class="h1 text-light HelveticaNeueLT Arabic 75 Bold"  style="font-size: 50px;">
     الأهداف والمواءمة مع رؤية السعودية 2030<br>
            </div>
     <div class="helveticaneuelt-arabic-55-roman" style="font-size: 20px;">
         <p> ◆ تعزيز الابتكار في الرعاية الصحية من خلال التصوير التشخيصي المدعوم بالذكاء الاصطناعي.</p>

<p>◆ دعم التحول الرقمي الوطني في سير عمل أقسام الأشعة.</p>

<p>◆ توطيد التعاون العالمي مع المؤسسات الرائدة في مجالي الأشعة والذكاء الاصطناعي.</p>

<p>◆ دفع عجلة البحث والابتكار وتطوير الذكاء الاصطناعي في قطاع الرعاية الصحية.</p>

<p>◆ بناء كوادر مؤهلة ومستعدة للمستقبل تضم أطباء أشعة، وفنيين، وعلماء بيانات. </p>
         </div>
    <div class="h1 text-light HelveticaNeueLT Arabic 75 Bold">
   <br ><br >رمز الإستجابة السريعة للمشاركة في القمة 
</div>
            </div>
    </section>
    <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
            <div class="d-flex flex-column align-items-center justify-content-start">
<div class="h1 text-light HelveticaNeueLT Arabic 75 Bold"  style="font-size: 50px;">
            موقع الفعالية
        </div>
               <div class="container d-flex justify-content-center align-items-center text-center h-100">
     <div class="row align-items-center">
        <div class="logo-container">
    <img src="<%= ResolveUrl("~/Content/images/Home-Image/Grand Hyatt Alkhobar logo.svg") %>"
         class="d-block grand-hyatt-logo"
         alt="Venue Location">
</div>
    </div>
        </div>
</section>
</asp:Content>
