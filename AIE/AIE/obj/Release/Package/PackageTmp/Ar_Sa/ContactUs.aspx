<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AIE.Ar_Sa.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section aria-label="section" data-bgimage="url(../Content/images/2025/ContactEn/1.png) top" class="text-light bg-image-small">
        <div class="container d-flex justify-content-center align-items-center text-center h-60">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h3 text-light">
                        تواصل معنا<br>
                    </div>
                    <div style="text-align: justify; font-size: larger" class="text-white">
                        للحصول على مزيد من المعلومات حول الحدث السنوي للابتكار، بما في ذلك تفاصيل المشاركة، وفرص
الرعاية، والاستفسارات العامة، يرجى الاتصال بنا على:
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section aria-label="section" data-bgimage="url(../Content/images/2025/ContactEn/1.png) top" class="text-light bg-image">
        <div class="container mt-4">
            <div class="card-body bg-white">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div id="contact_form" class="form-border text-black">
                            <div class="field-set">
                                <asp:TextBox ID="TxtName" runat="server" CssClass="form-control droidkufiregular" placeholder="الاسم الكامل"></asp:TextBox>
                            </div>
                            <div class="field-set">
                                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control droidkufiregular" placeholder="عنوان البريد الإلكتروني"></asp:TextBox>
                            </div>
                            <div class="field-set">
                                <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control droidkufiregular" placeholder="رقم المحمول"></asp:TextBox>
                            </div>
                            <div class="field-set">
                                <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-control droidkufiregular" placeholder="رسالة" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            </div>
                            <div class="spacer-half"></div>
                            <div id="submit" class="text-center">
                                <asp:LinkButton ID="BtnSubmit" runat="server" CssClass="btn btn-warning " OnClick="BtnSubmit_Click"><span class="droidkufiregular">أرسل رسالة</span></asp:LinkButton>
                            </div>
                            <div class="clearfix"></div>

                            <div class="spacer-single"></div>
                            <div id="divError" class="alert alert-danger text-danger droidkufiregular" runat="server">Test Messages</div>
                            <div class="clearfix"></div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </section>
    <section aria-label="section" data-bgimage="url(../Content/images/2025/ContactEn/1.png) top" class="text-light bg-image-small">
        <div class="container d-flex justify-content-center align-items-center text-center h-50">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">

                    <div style="text-align: justify; font-size: larger" class=" text-white">
                        ندعو جميع الأطراف المهتمة للتواصل معنا بأي أسئلة أو طلبات لمزيد من المعلومات. نتطلع إلى التعاون معكم
لجعل الحدث السنوي للابتكار نجاحاً باهراً، وتمكين الجيل القادم من المبتكرين والمساهمة في مستقبل مستدام
للاقتصاد السعودي.
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
