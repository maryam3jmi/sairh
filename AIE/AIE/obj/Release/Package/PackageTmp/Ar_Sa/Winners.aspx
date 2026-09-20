<%@ Page Title="" Language="C#" MasterPageFile="~/Ar_Sa/PublicAr.Master" AutoEventWireup="true" CodeBehind="Winners.aspx.cs" Inherits="AIE.Ar_Sa.Winners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="subheader" class="text-light" data-bgimage="url(../Content/images/background/1.jpg) bottom">
        <div class="center-y relative text-center">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 text-center">
                        <h1 class="droidkufiregular">الفائزون </h1>
                        <p class="droidkufiregular">خالص التهاني والتبريكات للفائزين بالجائزة بنسختها الأولى (ابتكر المستقبل)، وهنيئًا للجامعة والوطن بمثل هذه الطاقات المبدعة.  </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>
    <section aria-label="section">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">

                    <div class="expand-list">

                        <div class="expand-custom">
                            <div class="ec-header">
                                <div class="c1">
                                    <img src="../Content/images/misc/avatar-1.png" alt="">
                                </div>
                                <div class="c2">
                                    <h4 class="droidkufiregular">الفائزون من فئة أعضاء هيئة التدريس</h4>
                                    <p class="droidkufiregular">الفائزون من فئة أعضاء هيئة التدريس بجامعة الإمام عبدالرحمن بن فيصل </p>
                                </div>
                                <div class="c3">
                                    <span class="toggle"></span>
                                </div>
                            </div>



                            <div class="details" style="background-size: cover; display: block;">
                                <div class="row" runat="server" visible="false">
                                   
                                    <table class="table droidkufiregular">
                                        <tr class="alert alert-primary font-weight-bold">
                                            <td>لمركز</td>
                                            <td>اسم المشروع الابتكاري</td>
                                            <td>اسم الفائز/ الفائزة</td>
                                            <td>الكلية/ العمادة/ المعهد</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>1</td>
                                            <td>الكلية/ العمادة/ المعهد</td>
                                            <td>أ.د. جميل صالح محمد</td>
                                            <td>كلية الهندسة</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>2</td>
                                            <td>ناقل نانوي هرمي ميزوسيليكاليت سيلسي محمل بمركب البلاتين</td>
                                            <td>أ.د. رابيندران جيرمي <br />أ.د. فيجايا رافيناياجام</td>
                                            <td>معهد الأبحاث والاستشارات الطبية <br />عمادة البحث العلمي </td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>3</td>
                                            <td>بلاط الانترلوك المتوهج في الظلام</td>
                                            <td>أ.د. محمد سليم</td>
                                            <td>كلية الهندسة</td>
                                        </tr>
                                    </table>
                                    <div class="spacer-single"></div>

                                    <div class="col-md-12">
                                        <%-- <a href="#" class="btn btn-custom">Apply Now</a>--%>
                                    </div>
                                </div>


                                 <div class="row sequence">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-4 col-md-6 col-sm-12 sq-item wow">
                                                <div class="pricing-s1 mb30 droidkufiregular">
                                                    <div class="text-center mt-2">
                                                     <a href="#" class="btn-custom"><%#Eval("Placer") %> &nbsp;<span class="droidkufiregular">المركز</span></a>
                                                        </div>
                                                    <div class="top" style="height:120px">

                                                        <p class="plan-tagline"><%#Eval("WinnerNameAr") %></p>
                                                    </div>
                                                    <div class="text-center text-light bg-color" style="height:150px">
                                                        <p>
                                                           <%#Eval("ProjectNameAr") %>
                                                        </p>
                                                    </div>

                                                    <div class="bottom" style="height:150px">
                                                        
                                                        <p>
                                                            <%#Eval("InstituteAr") %>
                                                           
                                                        </p>
                                                    </div>

                                                   
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>

                        <div class="expand-custom">
                            <div class="ec-header">
                                <div class="c1">
                                    <img src="../Content/images/misc/avatar-1.png" alt="">
                                </div>
                                <div class="c2">
                                    <h4 class="droidkufiregular">الفائزون من فئةالطلبة</h4>
                                    <p class="droidkufiregular">الفائزون من فئةالطلبة بجامعة الإمام عبدالرحمن بن فيصل  </p>
                                </div>
                                <div class="c3">
                                    <span class="toggle"></span>
                                </div>
                            </div>



                            <div class="details" style="background-size: cover; display: block;">
                                <div class="row" runat="server" visible="false">
                                   
                                    <table class="table table-hover droidkufiregular">
                                        <tr class="alert alert-primary font-weight-bold">
                                            <td>المركز</td>
                                            <td>اسم المشروع الابتكاري</td>
                                            <td>اسم الفائز/ الفائزة</td>
                                            <td>الكلية/ العمادة/ المعهد</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>1</td>
                                            <td>جهاز مبتكر لتجميع نواتج الكلى في منتصف التيار</td>
                                            <td>عمار عبدالرزاق أمير<br />براء عبدالرزاق أمير</td>
                                            <td>كلية الطب</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>2</td>
                                            <td>تصميم جهاز استشعار بصري غير جراحي منخفض التكلفة للكشف المبكر عن فرط بيليروبين الدم</td>
                                            <td>دعاء عبدالله بابري <br />ساره صفران الصفران<br />مروة حمد العتيبي</td>
                                            <td>كلية الهندسة</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>3</td>
                                            <td>طاولة رفيق البطل</td>
                                            <td>شاهدة أحمد سليم<br />إسراء الحريري<br />بيان السادة <br />د. ربا مبارك الخالدي<br />د. ساره عبدالله الغامدي<br />د. مي محمد الجامع<br />د. هالة عبدالمنعم الوكيل</td>
                                            <td>كلية التصاميم</td>
                                        </tr>
                                         <tr class="alert alert-dark">
                                            <td>3</td>
                                            <td>المتتبع الذكي</td>
                                            <td>كمال محمد نايل<br />بدر أحمد القحطاني <br />أحمد خالد الحنين<br />منذر عبدالله الخلف<br />د. ناصر غازي حريري</td>
                                            <td>College of Engineering</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>4</td>
                                            <td>عالمي</td>
                                            <td>جنى محمد العطالله<br />غدير إبراهيم العليوي <br />أماني المالكي<br />د. ربا مبارك الخالدي<br />د. ساره عبدالله الغامدي<br />د. مي محمد الجامع<br />د. هالة عبدالمنعم الوكيل</td>
                                            <td>كلية التصاميم</td>
                                        </tr>
                                         <tr class="alert alert-dark">
                                            <td>4</td>
                                            <td>تصميم وبناء واختبار HAWT التي تنير الشوارع المستقلة على نطاق صغير</td>
                                            <td>نواف نزيه المصطفى</td>
                                            <td>كلية الهندسة</td>
                                        </tr>
                                    </table>
                                    <div class="spacer-single"></div>

                                    <div class="col-md-12">
                                        <%-- <a href="#" class="btn btn-custom">Apply Now</a>--%>
                                    </div>
                                </div>


                                 <div class="row sequence">
                                    <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-4 col-md-6 col-sm-12 sq-item wow">
                                                <div class="pricing-s1 mb30 droidkufiregular">
                                                    <div class="text-center mt-2">
                                                     <a href="#" class="btn-custom"><%#Eval("Placer") %> &nbsp;<span class="droidkufiregular">المركز</span></a>
                                                        </div>
                                                    <div class="top" style="height:250px">

                                                        <p class="plan-tagline"><%#Eval("WinnerNameAr") %></p>
                                                    </div>
                                                    <div class="text-center text-light bg-color" style="height:150px">
                                                        <p>
                                                           <%#Eval("ProjectNameAr") %>
                                                        </p>
                                                    </div>

                                                    <div class="bottom" style="height:50px">
                                                        
                                                        <p>
                                                            <%#Eval("InstituteAr") %>
                                                           
                                                        </p>
                                                    </div>

                                                   
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
