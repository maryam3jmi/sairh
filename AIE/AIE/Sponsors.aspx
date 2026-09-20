<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Sponsors.aspx.cs" Inherits="AIE.Sponsors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section aria-label="section" data-bgimage="url('Content/images/background/background.png') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light HelveticaNeueLT Arabic 75 bold">
                        Summit Partners<br>
                    </div>
                    <div style="text-align: justify;font-size:large" class=" text-white">
                        the Summit aims to establish strategic alliances with national authorities, innovation hubs, academic institutions, and leading industry partners to ensure scientific excellence, regulatory alignment, and sustainable impact.
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
                <h2>1. National Authorities &amp; Government Partners</h2>

                <ul>
                    <li>Research, Development and Innovation Authority (RDIA)</li>
                    <li>Digital Government Authority (DGA)</li>
                    <li>Virtual Health Hospital (VHH)</li>
                    <li>Saudi National Cybersecurity Authority</li>
                    <li>Saudi Standards, Metrology and Quality Organization (SASO)</li>
                    <li>Saudi Food and Drug Authority (SFDA)</li>
                    <li>Nuclear and Radiological Regulatory Commission (NRRC)</li>
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
                <h2>2. National Innovation &amp; Technology Ecosystem</h2>

                <ul>
                    <li>Dhahran Techno Valley</li>
                    <li>King Abdulaziz City for Science and Technology (KACST)</li>
                    <li>AlSharqi Chamber</li>
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
                <h2>3. Academic &amp; Research Institutions</h2>

                <ul>
                    <li>King Fahd University of Petroleum and Minerals (KFUPM)</li>
                    <li>University Research Centers &amp; Colleges</li>
                    <li>Colleges of Computer Science</li>
                    <li>Colleges of Engineering</li>
                    <li>Colleges of Medical Sciences</li>
                    <li>Colleges of Medicine</li>
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
                <h2>4. Industry &amp; Medical Technology Partners</h2>

                <ul>
                    <li>GE Healthcare</li>
                    <li>Philips Healthcare</li>
                    <li>Siemens Healthineers</li>
                    <li>Medical Device &amp; Imaging Technology Companies</li>
                    <li>AI &amp; Digital Health Solution Providers</li>
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
            <p><strong class="dark-blue">Role of Strategic Alliances</strong></p>
            <p>These alliances will support the Summit through:</p>
            <p>Scientific collaboration and content contribution.</p>
            <p>Policy and regulatory alignment.</p>
            <p>Technology showcases and live demonstrations.</p>
            <p>Innovation and startup engagement.</p>
            <p>Research partnerships and future initiatives.</p>
             </div>
         </div>
        </div>
    </section>

</asp:Content>
