<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AIE.Ar_Sa.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="full-height relative no-top no-bottom vertical-center" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') top" data-stellar-background-ratio=".5">
        <div class="overlay-gradient t50">
            <div class="center-y relative">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 text-light wow fadeInRight" data-wow-delay=".5s">
                            <div class="spacer-10"></div>
                            <div class="h1 text-light droidkufiregular">
                                مرحباً
                                <br />
                                <div class="typed-strings">
                                    <p><span class="h3 text-white droidkufiregular">القمة السعودية للذكاء الاصطناعي في الاشعة والابتكار الصحي</span></p>


                                </div>
                                <div class="typed"></div>
                            </div>
                            <p class="lead droidkufiregular">
                               2026 
                            </p>
                            <div class="spacer-20"></div>
                            <%--<a class="btn-custom" href="features.html">Learn More</a>&nbsp;
                                <a class="btn-border" href="download.html">Download</a>--%>
                            <div class="mb-sm-30"></div>
                        </div>

                        <div class="col-lg-4 offset-lg-2 wow fadeIn" data-wow-delay=".5s">
                            <div class="box-rounded padding40" data-bgcolor="#ffffff">
                                <h3 class="mb10 droidkufiregular">تسجيل الدخول</h3>
                                <p class="droidkufiregular">تسجيل الدخول باستخدام حساب موجود أو إنشاء حساب جديد <a href="Register"><span class="text-primary">هنا</span></a>.</p>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div id='contact_form' class="form-border">

                                    <div class="field-set">
                                        <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control droidkufiregular" placeholder="البريد الالكتروني"></asp:TextBox>
                                    </div>

                                    <div class="field-set">
                                        <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" CssClass="form-control droidkufiregular" placeholder="كلمة المرور"></asp:TextBox>
                                    </div>

                                    <div class="field-set">
                                        <asp:LinkButton ID="BtnLogin" runat="server" CssClass="btn btn-custom btn-fullwidth color-2" OnClick="Login_Click">
                                          <span class="droidkufiregular">تسجيل الدخول</span>  </asp:LinkButton>
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="spacer-single"></div>
                                     <div id="divError" class="error_input droidkufiregular" runat="server">Test Messages</div>
                                    <!-- social icons -->
                                    <%-- <ul class="list s3">
                                        <li>Login with:</li>
                                        <li><a href="#">Facebook</a></li>
                                        <li><a href="#">Google</a></li>
                                    </ul>--%>
                                    <!-- social icons close -->
                                </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
