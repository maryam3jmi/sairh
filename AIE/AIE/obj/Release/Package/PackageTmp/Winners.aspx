<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Winners.aspx.cs" Inherits="AIE.Winners" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="subheader" class="text-light" data-bgimage="url(Content/images/background/1.jpg) bottom">
        <div class="center-y relative text-center">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 text-center">
                        <h1>Winners</h1>
                        <p>Our sincere congratulations to the winners of the award in its first edition (Innovate the Future), and congratulations to the university and the Kingdom of Saudi Arabia for such creative energies.</p>
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
                                    <img src="Content/images/misc/avatar-1.png" alt="">
                                </div>
                                <div class="c2">
                                    <h4>Faculty Category</h4>
                                    <p>Winners from the Faculty category at Imam Abdulrahman bin Faisal University</p>
                                </div>
                                <div class="c3">
                                    <span class="toggle"></span>
                                </div>
                            </div>



                            <div class="details" style="background-size: cover; display: block;">
                                <div class="row" runat="server" visible="false">

                                    <table class="table">
                                        <tr class="alert alert-primary font-weight-bold">
                                            <td>Place</td>
                                            <td>Project Name</td>
                                            <td>Winner Name</td>
                                            <td>Institute</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>1</td>
                                            <td>Broadband Switch and Multi Tuned Radiofrequency Coil Device for Magnetic Resonance Imaging Machines</td>
                                            <td>Prof. Gameel Saleh Mohammed</td>
                                            <td>College of Engineering</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>2</td>
                                            <td>Hierarchical Siliceous Mesosilicalite Nanocarrier Loaded with Platinum II Complex</td>
                                            <td>Prof. Rabindran Jermy
                                                <br />
                                                Prof. Vijaya Ravi Nayagam</td>
                                            <td>Institute of Research and Medical Consultations
                                                <br />
                                                Deanship of Scientific Research</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>3</td>
                                            <td>Glow-in-the-Dark Interlock Tiles</td>
                                            <td>Prof. Muhammad Saleem</td>
                                            <td>College of Engineering</td>
                                        </tr>
                                    </table>
                                    <div class="spacer-single"></div>
                                </div>

                                <div class="row sequence">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-4 col-md-6 col-sm-12 sq-item wow">
                                                <div class="pricing-s1 mb30">
                                                    <div class="text-center mt-2">
                                                        <a href="#" class="btn-custom"><%#Eval("Placer") %> &nbsp;Place</a>
                                                    </div>
                                                    <div class="top" style="height: 120px">

                                                        <p class="plan-tagline"><%#Eval("WinnerName") %></p>
                                                    </div>
                                                    <div class="text-center text-light bg-color" style="height: 150px">
                                                        <p>
                                                            <%#Eval("ProjectName") %>
                                                        </p>
                                                    </div>

                                                    <div class="bottom" style="height: 150px">

                                                        <p>
                                                            <%#Eval("Institute") %>
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
                                    <img src="Content/images/misc/avatar-1.png" alt="">
                                </div>
                                <div class="c2">
                                    <h4>Student Category</h4>
                                    <p>Winners from the student’s category at Imam Abdulrahman bin Faisal University </p>
                                </div>
                                <div class="c3">
                                    <span class="toggle"></span>
                                </div>
                            </div>



                            <div class="details" style="background-size: cover; display: block;">
                                <div class="row" runat="server" visible="false">

                                    <table class="table table-hover">
                                        <tr class="alert alert-primary font-weight-bold">
                                            <td>Place</td>
                                            <td>Project Name</td>
                                            <td>Winner Name</td>
                                            <td>Institute</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>1</td>
                                            <td>Novel Mid-Stream Urine Collection Device</td>
                                            <td>Ammar Abdulrazack Amir<br />
                                                Baraa Abdulrazack Amir</td>
                                            <td>College of Medicine</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>2</td>
                                            <td>Designing a Non-Invasive Low-Cost Optical Sensor for the Early Detection of Hyperbilirubinemia</td>
                                            <td>Duaa Abdullah Babry
                                                <br />
                                                Sara Safran AlSafran<br />
                                                Marwa Hamad Al-Otaibi</td>
                                            <td>College of Engineering</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>3</td>
                                            <td>A Hero’s Companion Table</td>
                                            <td>Shahida Ahmed Salem<br />
                                                Esraa Al-Hariri<br />
                                                Bayan Alsadah<br />
                                                Dr.  Ruba Mubarak AlKhaldi<br />
                                                Dr. Sara Abdullah Alghamdi<br />
                                                Dr. May Mohamed Aljamea<br />
                                                Dr. Hala Abdulmoneem El-Wakeel</td>
                                            <td>College of Design</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>3</td>
                                            <td>Smart Tracker</td>
                                            <td>Kamal Mohamed Nayel<br />
                                                Badr Ahmed Al-Qahtani
                                                <br />
                                                Ahmed Khaled Al-Hanen<br />
                                                Monther Abdullah Al-Khalaf<br />
                                                Dr. Nasir Ghazi Hariri</td>
                                            <td>College of Engineering</td>
                                        </tr>
                                        <tr class="alert alert-secondary">
                                            <td>4</td>
                                            <td>My World</td>
                                            <td>Jana Mohammed AlAtallah
                                                <br />
                                                Ghadeer Ibrahim Alaliwie
                                                <br />
                                                Amani Almalki<br />
                                                Dr.  Ruba Mubarak AlKhaldi<br />
                                                Dr. Sara Abdullah Alghamdi<br />
                                                Dr. May Mohamed Aljamea<br />
                                                Dr. Hala Abdulmoneem El-Wakeel</td>
                                            <td>College of Design</td>
                                        </tr>
                                        <tr class="alert alert-dark">
                                            <td>4</td>
                                            <td>Design, Build, and Test Small Scale HAWT Operated for Stand-Alone Street Light</td>
                                            <td>Nawaf Nazeeh Al-Mustafa</td>
                                            <td>College of Engineering</td>
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
                                                <div class="pricing-s1 mb30">
                                                    <div class="text-center mt-2">
                                                        <a href="#" class="btn-custom"><%#Eval("Placer") %> &nbsp;Place</a>
                                                    </div>
                                                    <div class="top" style="height: 250px">

                                                        <p class="plan-tagline"><%#Eval("WinnerName") %></p>
                                                    </div>
                                                    <div class="text-center text-light bg-color" style="height: 150px">
                                                        <p>
                                                            <%#Eval("ProjectName") %>
                                                        </p>
                                                    </div>

                                                    <div class="bottom" style="height: 50px">

                                                        <p>
                                                            <%#Eval("Institute") %>
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
