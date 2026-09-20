<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AIE.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section aria-label="section" data-bgimage="url(Content/images/2025/DefaultEn/1.png) top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h1 text-light">
                        Annual Innovation Event<br>
                        <div class="typed-strings">
                            <p>18 January 2025</p>
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
                    <img src="Content/images/2025/SliderEn/1.png" class="d-block w-100" alt="...">
                </div>--%>
                <div class="carousel-item active">
                    <img src="Content/images/2025/SliderEn/2.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                     <img src="Content/images/2025/SliderEn/3.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                     <img src="Content/images/2025/SliderEn/4.png" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
    </section>
    <section>
        <img src="Content/images/2025/DefaultEn/3.png" class="d-block w-100" alt="...">
    </section>
    <section>

        <img src="Content/images/2025/DefaultEn/4.png" class="d-block w-100" alt="...">
    </section>
</asp:Content>
