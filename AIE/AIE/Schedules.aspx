<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="AIE.Schedules" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section aria-label="section" data-bgimage="url('Content/images/background/background.png') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light HelveticaNeueLT Arabic 75 Bold">
                         Exhibition & Partner Participation<br>
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
                A dedicated exhibition hall will feature:
                <br><br>
            </div>
            <div class="text-dark HelveticaNeueLT Arabic 75"
                 style="font-size: 25px;">
                <p>◆ International AI & Radiology companies.</p>
                <p>◆ Digital health startups.</p>
                <p>◆ Universities & research centers.</p>
                <p>◆ National organizations (SDAIA, Aramco Digital, MOH, SFDA).</p>
                <p>◆ Healthcare innovators.</p>
                <p>◆ Non-profit organizations.</p>
            </div>
        </div>
    </div>
</section>
</asp:Content>
