<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="AIE.Ar_Sa.Schedules" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light">
                         المعرض<br>
                    </div>
                    <div style="text-align:justify;font-size:large" class="text-white">
                    جمهور أوسع وفرصة للمشاركين لعرض إبداعاتهم ومهاراتهم في حل المشكلات والحصول على ملاحظات وتعليقات من خبراء الصناعة ومن زملائهم
                    </div>
                </div>
            </div>
        </div>
    </section>
 <section aria-label="section"
         data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top"class="text-light bg-image">
    <div class="container">
        <div class="white-content-box">
            <div class="text-dark HelveticaNeueLT Arabic 75 Bold"
                 style="font-size: 40px;">
                <br>
                ستضم قاعة العرض ما يلي: <br><br>
            </div>
            <div class="text-dark HelveticaNeueLT Arabic 75"
                 style="font-size: 25px;">
                <p>◆ الشركات الدولية المتخصصة في الذكاء الاصطناعي والأشعة.</p>
                <p>◆ الجامعات ومراكز الأبحاث.</p>
                <p>◆ الشركات الناشئة في مجال الصحة الرقمية.</p>
                <p>◆ المنظمات الوطنية (سدايا، أرامكو الرقمية، وزارة الصحة، الهيئة العامة للغذاء والدواء).</p>
                <p>◆ المبتكرون في مجال الرعاية الصحية.</p>
                <p>◆ المنظمات غير الربحية.</p>
            </div>
        </div>
    </div>
</section>
  
</asp:Content>