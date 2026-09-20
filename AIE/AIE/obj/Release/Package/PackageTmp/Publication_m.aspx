<%@ Page Title="" Language="C#" MasterPageFile="~/PublicMobile.Master" AutoEventWireup="true" CodeBehind="Publication_m.aspx.cs" Inherits="AIE.Publication_m" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="subheader" class="text-light" data-bgimage="url(Content/images/background/1.jpg) bottom">
        <div class="center-y relative text-center">
            <div class="container">
                <div class="row">

                    <div class="col text-center">
                        <div class="spacer-single"></div>
                        <h1 class="droidkufiregular">Publication</h1>
                        <p>Annual Innovation Event   </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>
    <section id="section-banner">
        <div class="container">
            
            <div class="row align-items-center">

                
                <div class="padding20 bg-color text-light box-rounded col-md-12">
                    
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ds_pub" Theme="Material" Width="100%" KeyFieldName="PublicationID">
                        <SettingsPager PageSize="50"></SettingsPager>
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="PublicationID" ReadOnly="True" VisibleIndex="0" Visible="false"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Grouping" VisibleIndex="1" Visible="false"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TitleEnAr" VisibleIndex="2" Caption="Title"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="FilePath" VisibleIndex="3" Visible="false"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn VisibleIndex="3" Caption="Download" CellStyle-HorizontalAlign="Center">
                                <DataItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl=' <%#Eval("FilePath")%>' Target="_blank"><i class="fa-solid fa-file-pdf fa-2x"></i></asp:HyperLink>
                                </DataItemTemplate>
                            </dx:GridViewDataTextColumn>
                        </Columns>

                        <Styles>
                            <Header Font-Size="Large" HorizontalAlign="Center" CssClass="alert alert-primary"></Header>
                        </Styles>
                        <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="false" AllowHideDataCellsByColumnMinWidth="true"></SettingsAdaptivity>

                        <Settings ShowColumnHeaders="true" />
                        
                    </dx:ASPxGridView>
                    <asp:SqlDataSource runat="server" ID="ds_pub" ConnectionString='<%$ ConnectionStrings:AIEConnectionString %>'
                        SelectCommand="PublicationGet" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="En" Name="Grouping" Type="String"></asp:Parameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                
            </div>
        </div>
    </section>
</asp:Content>
