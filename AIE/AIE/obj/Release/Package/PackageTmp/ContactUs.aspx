<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AIE.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section aria-label="section" data-bgimage="url(Content/images/2025/ContactEn/1.png) top" class="text-light bg-image-small" >
        <div class="container d-flex justify-content-center align-items-center text-center h-60">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                    <div class="h3 text-light">
                        Get in touch<br>
                    </div>
                    <div style="text-align: justify;font-size:larger" class="text-white">
                        For more information about the Annual Innovation Event, including details on participation, sponsorship opportunities, and general inquiries, please contact us:
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section aria-label="section" data-bgimage="url(Content/images/2025/ContactEn/1.png) top" class="text-light bg-image">
        <div class="container mt-4">
            <div class="card-body bg-white">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div id="contact_form" class="form-border text-black">
                            <div class="field-set">

                                <asp:TextBox ID="TxtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                            </div>

                            <div class="field-set">
                                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" placeholder="Your Email"></asp:TextBox>

                            </div>

                            <div class="field-set">
                                <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control" placeholder="Your Phone"></asp:TextBox>

                            </div>

                            <div class="field-set">
                                <asp:TextBox ID="TxtMessage" runat="server" CssClass="form-control" placeholder="Your Message" TextMode="MultiLine" Rows="3"></asp:TextBox>

                            </div>

                            <div class="spacer-half"></div>

                            <div id="submit" class="text-center">
                                <asp:LinkButton ID="BtnSubmit" runat="server" CssClass="btn btn-warning" OnClick="BtnSubmit_Click">Submit</asp:LinkButton>

                            </div>
                           

                            <div class="spacer-single"></div>
                            <div id="divError" class="alert alert-danger text-danger" runat="server">Test Messages</div>
                          <div class="spacer-20"></div>
                            <div class="spacer-20"></div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </section>
     <section aria-label="section" data-bgimage="url(Content/images/2025/ContactEn/1.png) top" class="text-light bg-image-small">
          <div class="container d-flex justify-content-center align-items-center text-center h-50">
            <div class="row align-items-center">
                <div class="col-lg-12 wow fadeInRight" data-wow-delay=".5s">
                   
                    <div style="text-align: justify;font-size:larger" class=" text-white">
                        We encourage all interested parties to reach out with questions or requests for further
                        information. We look forward to collaborating with you to make the Annual Innovation
                        Event a resounding success, empowering the next generation of innovators and
                        contributing to the sustainable future of Saudi Arabia’s economy.
                    </div>
                </div>
            </div>
        </div>
         </section>

</asp:Content>
