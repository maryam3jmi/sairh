<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AIE.Ar_Sa.Register" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v20.2, Version=20.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- section begin -->
    <section id="subheader" class="text-light" data-bgimage="url('<%= ResolveUrl("~/Content/images/background/background.png") %>') bottom">
        <div class="center-y relative text-center">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 text-center">
                        <h1 class="droidkufiregular">التسجيل</h1>
                        <p class="droidkufiregular">قم بإنشاء حسابك أدناه</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- section close -->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <section aria-label="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <h3 class="droidkufiregular">ليس لديك حساب؟ سجل الان.</h3>
                            <p></p>

                            <div class="spacer-10"></div>

                            <div id='contact_form' class="form-border">

                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">الاسم الكامل:</label>
                                            <asp:TextBox ID="TxtFullName" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">رقم الهاتف المحمول:</label>
                                            <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6 ">
                                        <div class="field-set ">
                                            <label class="droidkufiregular">الجنس:</label>
                                           
                                                <asp:RadioButtonList ID="TxtGender" runat="server" CssClass="form-control droidkufiregular" RepeatDirection="Horizontal" Height="43px">
                                                    <asp:ListItem Value="Male">ذكر</asp:ListItem>
                                                    <asp:ListItem Value="Female">انثى</asp:ListItem>
                                                </asp:RadioButtonList>
                                            
                                                <%--<dx:ASPxRadioButtonList ID="TxtGender" runat="server" ValueType="System.String" Width="100%" Theme="Material"
                                                RepeatDirection="Horizontal">
                                                <Items>
                                                    <dx:ListEditItem Value="Male" Text="ذكر" />
                                                    <dx:ListEditItem Value="Female" Text="انثى" />
                                                </Items>
                                            </dx:ASPxRadioButtonList>
                                                </asp:Panel>--%>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">الجنسية:</label>

                                            <dx:BootstrapComboBox ID="Nationality" runat="server" DataSourceID="ds_Countries" EnableTheming="true" ValueField="CountryID" ValueType="System.String"
                                                CssClasses-Button="btn btn-primary" CssClasses-ListBox="droidkufiregular">

                                                <Fields>
                                                    <dx:BootstrapListBoxField FieldName="NationalityAr"></dx:BootstrapListBoxField>
                                                </Fields>
                                            </dx:BootstrapComboBox>
                                            <asp:SqlDataSource runat="server" ID="ds_Countries" ConnectionString='<%$ ConnectionStrings:AIEConnectionString %>'
                                                SelectCommand="SELECT [CountryID], [NationalityAr], [PathLocation] FROM [qryCountries] ORDER BY [Sorting]"></asp:SqlDataSource>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">عنوان البريد الإلكتروني:</label>

                                            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">حساب اللينكدن</label>
                                            <asp:TextBox ID="TxtLinkedin" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">كلمة المرور:</label>
                                            <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label class="droidkufiregular">إعادة إدخال كلمة المرور:</label>
                                            <asp:TextBox ID="TxtPasswordAgain" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="col-md-12">

                                        <div id='submit' class="pull-left">
                                            <asp:LinkButton ID="BtnRegister" runat="server" CssClass="btn btn-custom color-2 droidkufiregular" OnClick="BtnRegister_Click"><span class="droidkufiregular">التسجيل</span></asp:LinkButton>

                                        </div>
                                        <div class="clearfix"></div>

                                        <div class="spacer-single"></div>
                                        <div id="divError" class="error_input" runat="server">Test Messages</div>
                                        <div class="clearfix"></div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
