<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Publication.aspx.cs" Inherits="AIE.Publication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br> <br> <br>
<section aria-label="section" data-bgimage="url('Content/images/background/background.png') top" class="text-light bg-image">
    <div class="container d-flex justify-content-center align-items-center text-center h-100">
        <div class="row align-items-center">
            <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                <div class="h1 text-light HelveticaNeueLT Arabic 75 Bold">
                     Conference track overview<br>
                </div>
            </div>
        </div>
    </div>
</section>
    <section aria-label="section"data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class=" bg-image">
   <div class="container">
        <div class="white-content-box">
            <div class="text-dark HelveticaNeueLT Arabic 75" style="font-size: 25px;">
                <p><strong class="dark-blue">Track A </strong></p>
                <p><strong class="dark-blue">Artificial Intelligence, Digital Technology Transformation & RadBix </strong>Focus on Al in imaging, data ecosystems, RadBix, workflow automation, cybersecurity, and national Al frameworks.</p>
                <p><strong class="dark-blue">Track B </strong></p>
                <p><strong class="dark-blue">Advanced Clinical Radiology </strong>MRI, CT, Ultrasound, X-Ray, IVR, NM, Mammography updated to 2026 standards.</p>
                <p><strong class="dark-blue">Track C </strong></p>
                <p><strong class="dark-blue">Education, Quality, Research & Innovation </strong>Research methods, publishing, quality standards, simulation-based training, and innovation labs.</p>
            </div>
        </div>
    </div>
</section>
</asp:Content>
