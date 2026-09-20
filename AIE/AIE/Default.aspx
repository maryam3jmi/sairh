<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AIE.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section aria-label="section" data-bgimage="url('Content/images/background/background.png') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light HelveticaNeueLT Arabic 75 Bold">
                                Saudi First AI Summit in Radiology and Health Innovation<br>
                        <div class="typed-strings">
                            <p>2026</p>
                        </div>
                        <div class="typed"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="dashboard-section" aria-label="Live Dashboard">
    <div class="container-fluid">
        <iframe 
            src="https://localhost:7198/"
            style="width:100%; height:700px; border:none;"
            title="Live Dashboard">
        </iframe>
    </div>
</section>
        <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
        <div class="d-flex flex-column align-items-center justify-content-start">
<div class="h1 text-light HelveticaNeueLT Arabic 75 Bold"  style="font-size: 50px;">
    <br> Aims & Alignment with Saudi Vision 2030<br>
            </div>
     <div class="helveticaneuelt-arabic-55-roman" style="font-size: 20px;">
<p>◆Enhance healthcare innovation through Al-driven diagnostic Imaging.</p>

<p>◆Support national digital transformation in radiology workflows.</p>

<p>◆Strengthen global collaborations with leading radiology & Al institutions.</p>

<p>◆Advance research, innovation, and Al development across healthcare.</p>

<p>◆Build a future-ready workforce of radiologists, technologists, and data scientists.</p>
     </div>
    <div class="h1 text-light HelveticaNeueLT Arabic 75 Bold">
   <br><br > QR code for participation in the SRAS<br>
</div>
            </div>
    </section>
  
    <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
    <div class="container d-flex flex-column align-items-center justify-content-start ">
<div class="h1 text-light HelveticaNeueLT Arabic 75 Bold"  style="font-size: 50px;">
            Venue Location
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
        </div>
</section>
</asp:Content>
