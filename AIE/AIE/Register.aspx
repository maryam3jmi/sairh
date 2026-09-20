<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AIE.Register" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v20.2, Version=20.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- section begin -->
    <section id="subheader" class="text-light" data-bgimage="url(Content/images/background/background.png) bottom">
        <div class="center-y relative text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1>Register</h1>
                        <p>Create your account below</p>
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
                            <h3>Don't have an account? Register now.</h3>
                            <p></p>

                            <div class="spacer-10"></div>

                            <div id='contact_form' class="form-border">

                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Full Name:</label>
                                            <asp:TextBox ID="TxtFullName" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Mobile:</label>
                                            <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Gender:</label>
                                            <dx:ASPxRadioButtonList ID="TxtGender" runat="server" ValueType="System.String" Width="100%" RepeatDirection="Horizontal" Height="40px">
                                                <Items>
                                                    <dx:ListEditItem Value="Male" Text="Male" />
                                                    <dx:ListEditItem Value="Female" Text="Female" />
                                                </Items>
                                            </dx:ASPxRadioButtonList>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Nationality:</label>
                                            <%--<asp:DropDownList ID="Nationality" runat="server" DataSourceID="ds_Countries" DataTextField="NationalityEn" DataValueField="CountryID" CssClass="form-control" ></asp:DropDownList>--%>
                                            <dx:BootstrapComboBox ID="Nationality" runat="server" DataSourceID="ds_Countries" EnableTheming="true" CssClasses-Button="btn btn-primary"
                                                ValueField="CountryID" ValueType="System.String">

                                                <Fields>
                                                    <dx:BootstrapListBoxField FieldName="NationalityEn"></dx:BootstrapListBoxField>
                                                </Fields>
                                            </dx:BootstrapComboBox>
                                            <asp:SqlDataSource runat="server" ID="ds_Countries" ConnectionString='<%$ ConnectionStrings:AIEConnectionString %>' 
                                                SelectCommand="SELECT [CountryID], [NationalityEn], [PathLocation] FROM [qryCountries] ORDER BY [Sorting]"></asp:SqlDataSource>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Email Address:</label>

                                            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                     <div class="col-md-6">
                                        <div class="field-set">
                                            <label>LinkedIn Account:</label>
                                            <asp:TextBox ID="TxtLinkedin" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Password:</label>
                                            <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="field-set">
                                            <label>Re-enter Password:</label>
                                            <asp:TextBox ID="TxtPasswordAgain" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="col-md-12">

                                        <div id='submit' class="pull-left">
                                            <asp:LinkButton ID="BtnRegister" runat="server" CssClass="btn btn-custom color-2" OnClick="BtnRegister_Click">Register Now</asp:LinkButton>

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
