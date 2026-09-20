<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Judges.aspx.cs" Inherits="AIE.Ar_Sa.Judges" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section aria-label="section" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" class="text-light bg-image">
        <div class="container d-flex justify-content-center align-items-center text-center h-100">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h3 text-light">
                      المتحدثون<br>
                    </div>
                    <div style="text-align: justify;font-size:large" class="text-white">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <img src="../Content/images/2025/JudgesAr/" class="d-block w-100" alt="...">
    </section>


</asp:Content>
