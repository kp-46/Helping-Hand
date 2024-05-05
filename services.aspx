<%@ Page Language="C#" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="Try_services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>Helping Hand</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/vendor.css">

    <!-- script
    ================================================== -->
    <script src="js/modernizr.js"></script>
    <script defer src="js/fontawesome/all.min.js"></script>

    <!-- favicons
    ================================================== -->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
</head>
<body id="top">
    <form id="form1" runat="server">
     <div>
            <!-- header
    ================================================== -->
         
    <header class="s-header">
        <div class="row">

            
                <a href="index.aspx">
                    <img src="img/logo2.png" alt="Helping-Hand" height="100" width="100"  style=" margin-right: 4rem; position:relative; margin-top:2rem; margin-bottom:0rem; "  />
                </a>
            

            <nav class="s-header__nav" style=" font-size:medium; margin-right: 4rem; position: inherit; margin-top:2rem; margin-bottom:0rem; " >
                <ul>
                                 
              
                    <li style="background-color: hsla(182, 82%, 38%, 1);" ><a href="index.aspx">Home</a></li>
                    <li><asp:Linkbutton ID="serv" runat="server" PostBackUrl="~/services.aspx" Text="Our Services"/></li>
                    <li><asp:Linkbutton ID="book" runat="server" PostBackUrl="~/form_user.aspx" Text="Book"/></li>
                    <li><asp:Linkbutton ID="ords" runat="server" PostBackUrl="~/confirmpagefinal.aspx" Text="Orders"/></li>
                     
                    <li><asp:Linkbutton ID="abtus" runat="server" PostBackUrl="~/about us.aspx" Text="About Us"/></li>
                    <li><asp:Linkbutton ID="cntus" runat="server" PostBackUrl="~/index.aspx" Text="Contact Us"/></li>
    
                    <%--<li>class="folio-item__thumb"<a href="#login"  data-lity>Login</a></li>--%>
                    <li><asp:Linkbutton ID="logout" runat="server" Text="LogOut" OnClick="logout_Click"/></li>
                   <%-- <li><asp:Linkbutton ID="Linkbutton4" runat="server" PostBackUrl="~/bookingfinal.aspx" Text="User Details"/></li>--%>
                    <asp:Label id="lbl1" runat="server"/>
                </ul>
            </nav>

            <a class="s-header__menu-toggle" href="#0" title="Menu">
                <span class="s-header__menu-icon"></span>
            </a>

        </div> <!-- end row -->
    </header> <!-- end s-header -->

  <!-- end s-header -->

            <!-- portfolio
    ================================================== -->
            <section id="portfolio" class="s-portfolio target-section">

                <div class="row section-head">
                    <div class="column large-3 medium-12">
                        <h2>Services</h2>
                        <p class="desc">Check out our Top Services.</p>
                    </div>

                    <div class="column large-8 medium-12 align-x-right">
                        <p class="lead">
                            Three Services Provided By Helping Hand:<br />
                                -<b>Cleaning</b> : The main forte of Cleaning Services is to make your house Neat & Clean.Cleaning Includes:<br />
                                -moping <br />
                                -sweeping<br />
                                -<b>Cooking</b>: Cooking services works like when the respective worker comes to your residential place and cooks as per user's demand<br />
                                -<b>Washing</b>: Washing includes two types: <br />
                                -Utensils<br />
                                -Clothes<br />
                        </p>
                    </div>
                    <div class="column services-item align-x-left">
                        <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="true" Font-Size="X-Large" OnSelectedIndexChanged="ddl1_SelectedIndexChanged" >
                            <%--OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="185px">--%>
                            <asp:ListItem Value="no">Service</asp:ListItem>
                            <asp:ListItem Value="co">Cooking</asp:ListItem>
                            <asp:ListItem Value="cl">Cleaning</asp:ListItem>
                            <asp:ListItem Value="w">Washing</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:MultiView runat="server" ID="mlv">
                        <asp:View ID="chk1" runat="server">
                     <div class="column large-7 medium-5 align-x-right ">
                           
                                <asp:RadioButton ID="sw" runat="server" AutoPostBack="true" OnCheckedChanged="sw_CheckedChanged" />
                                &nbsp&nbsp
                                         <asp:Label runat="server" Text="Sweeping" Font-Size="Large"></asp:Label>
                                
                                &nbsp &nbsp   
                                <asp:RadioButton ID="wi" runat="server" AutoPostBack="true" OnCheckedChanged="wi_CheckedChanged"/>
                                &nbsp&nbsp
                                    
                                        <asp:Label runat="server" Text="Moping" Font-Size="Large"></asp:Label>
                                
                                <%--OnCheckedChanged="Radchng" />--%>
                            </div>
                            </asp:View>
                        <asp:View runat="server" ID="chk2">
                             <div class="column large-7 medium-5 align-x-center ">
                            
                                <asp:RadioButton ID="cl" runat="server" AutoPostBack="true" OnCheckedChanged="cl_CheckedChanged" />
                               &nbsp&nbsp
                                
                                         <asp:Label runat="server" Text="Clothes" Font-Size="Large"></asp:Label>
                                <asp:RadioButton ID="ut" runat="server" AutoPostBack="true" OnCheckedChanged="ut_CheckedChanged"/>
                                &nbsp&nbsp
                                    <asp:Label runat="server" Text="Utensils" Font-Size="Large" OnCheckedChanged="wi_CheckedChanged"></asp:Label>
                        </div>
                        </asp:View>
                        </asp:MultiView>
                       
                </div>
                <div class="row block-large-1-3 block-medium-1-2 block-mob-full folio-list">
                
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2">
                  <asp:View ID="cl_v" runat="server">
                      
                            <asp:MultiView runat="server" ID="clean">
                                <asp:View ID="cl_sw" runat="server">


                                    <div class="column folio-item">
                                        <a href="#seep1" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/sw1.jpg" Height="400" Width="370" ID="kay"></asp:Image>
                                            <span class="folio-item__text">1-day
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->
                <div id="sweep1" class="modal-popup lity-hide">
             <asp:Image runat="server" ImageUrl="img/sw1.jpg" Height="500" Width="650" ID="Image7"></asp:Image>

            <div class="modal-popup__desc">
                <h5>Droplet</h5>
                <p>Odio soluta enim quos sit asperiores rerum rerum repudiandae cum. Vel voluptatem alias qui assumenda iure et expedita voluptatem. Ratione officiis quae.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>
                </div>
        <!-- end modal-01 -->


                                    <div class="column folio-item">
                                        <a href="#sweep2" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/sw2.jpg" Height="400" Width="370" ID="i3"></asp:Image>
                                            <span class="folio-item__text">1-Month
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->

                                    <div class="column folio-item">
                                        <a href="#sweep3" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/sw3.jpg" Height="400" Width="370" ID="i4"></asp:Image>
                                            <span class="folio-item__text">6-Months
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->
                                             </asp:View>
                            

                                <asp:View ID="cl_wi" runat="server">

                                    <div class="column folio-item">
                                        <a href="#mop1" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/wi1.jpg" Height="400" Width="370" ID="Image1"></asp:Image>
                                            <span class="folio-item__text">1-Day
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->


                                    <div class="column folio-item">
                                        <a href="#mop2" class="folio-item__thumb" data-lity>

                                            <asp:Image runat="server" ImageUrl="img/wi2.jpg" Height="400" Width="370" ID="Image2"></asp:Image>

                                            <span class="folio-item__text">1-Month
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->

                                    <div class="column folio-item">
                                        <a href="#mop3" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/wi3.jpg" Height="400" Width="370" ID="Image3"></asp:Image>
                                            <span class="folio-item__text">6-Months
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->
                                </asp:View>
                            </asp:MultiView>
                           <%--</div>--%>
                  </asp:View>
                   
                        <asp:View ID="cook" runat="server">
                            <div class="column folio-item">
                                <a href="#cooking1" class="folio-item__thumb" data-lity>
                                    <asp:Image runat="server" ImageUrl="img/cook1.jpg" Height="400" Width="370" ID="cook1"></asp:Image>
                                    <span class="folio-item__text">1-Day
                                    </span>
                                </a>
                            </div>
                            <!-- end folio-item -->


                            <div class="column folio-item">
                                <a href="#cooking2" class="folio-item__thumb" data-lity>
                                    <asp:Image runat="server" ImageUrl="img/cook2.jpg" Height="400" Width="370" ID="cook2"></asp:Image>
                                    <span class="folio-item__text">1-Month
                                    </span>
                                </a>
                            </div>
                            <!-- end folio-item -->

                            <div class="column folio-item">
                                <a href="#cooking3" class="folio-item__thumb" data-lity>
                                    <asp:Image runat="server" ImageUrl="img/cook3.jpg" Height="400" Width="370" ID="cook3"></asp:Image>
                                    <span class="folio-item__text">6-Months
                                    </span>
                                </a>
                            </div>
                            <!-- end folio-item -->
                        </asp:View>
                    
                   <%--  <div class="row block-large-1-3 block-medium-1-2 block-mob-full folio-list">--%>
                    <asp:View ID="wa_v" runat="server">
                       
                            <asp:MultiView runat="server" ID="wash">
                                <asp:View runat="server" ID="wa_cl">
                                    <div class="column folio-item">
                                        <a href="#cloth1" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/cl1.jpg" Height="400" Width="370" ID="cl1"></asp:Image>
                                            <span class="folio-item__text">1-Day
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->


                                    <div class="column folio-item">
                                        <a href="#cloth2" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/cl2.jpg" Height="400" Width="370" ID="cl2"></asp:Image>
                                            <span class="folio-item__text">1-Month
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->

                                    <div class="column folio-item">
                                        <a href="#cloth3" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/cl3.jpg" Height="400" Width="370" ID="cl3"></asp:Image>
                                            <span class="folio-item__text">6-Months
                                            </span>
                                        </a>
                                    </div>

                                </asp:View>
                                <asp:View ID="wa_ut" runat="server">
                                    <div class="column folio-item">
                                        <a href="#ut1" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/ut1.jpg" Height="400" Width="370" ID="Image4"></asp:Image>
                                            <span class="folio-item__text">1-Day
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->


                                    <div class="column folio-item">
                                        <a href="#ut2" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/ut2.jpg" Height="400" Width="370" ID="Image5"></asp:Image>
                                            <span class="folio-item__text">1-Month
                                            </span>
                                        </a>
                                    </div>
                                    <!-- end folio-item -->

                                    <div class="column folio-item">
                                        <a href="#ut3" class="folio-item__thumb" data-lity>
                                            <asp:Image runat="server" ImageUrl="img/ut3.jpg" Height="400" Width="370" ID="Image6"></asp:Image>
                                            <span class="folio-item__text">6-Months
                                            </span>
                                        </a>
                                    </div>

                                </asp:View>
                            </asp:MultiView>
                        </asp:View><%--</div>--%>
                </asp:MultiView>
              
        </div>
              <div class="row large-1">
                <asp:Button runat="server" ID="bookin" PostBackUrl="~/form_user.aspx" CssClass="btn--large align-x-center" Text="Book"/>
                  </div>
        <!-- end folio-list -->
        <!-- Modal Popup
        =========================================================== -->
        

        <div id="sweep2" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-lamp.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>The Lamp</h5>
                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
                 <div id="sweep3" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-lamp.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>The Lamp</h5>
                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
       
        <!-- end modal-02 -->

        <div id="cooking1" class="modal-popup lity-hide">

            <img src="img/cook1.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>1-Day</h5>
                <p>Cleaning Services to Book for one day<b>(*Available For 4 People or More)</b></p>
                <p>
                    Price: <b>Rs.199</b><br />
                    Note: If one person added Then <b>Price X 49</b>
                </p>
                <ul class="modal-popup__cat">
                    <%--<li>Product Design</li>--%>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-03 -->

        <div id="cooking2" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-shutterbug.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>1-Day</h5>
                <p>Cleaning Services to Book for one Month<b>(*Available For 4 People or More)</b></p>
                <p>
                    Price: <b>Rs.699</b><br />
                    Note: If one person added Then <b>Price X 169</b>
                </p>
                <ul class="modal-popup__cat">
                    <%--<li>Product Design</li>--%>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-04 -->

        <div id="cooking3" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-fuji.jpg" alt="" />

            <div class="modal-popup__desc">
               <h5>6-Months</h5>
                <p>Cleaning Services to Book for 6-Months<b>(*Available For 4 People or More)</b></p>
                <p>
                    Price: <b>Rs.4499</b><br />
                    Note: If one person added Then <b>Price X 1099</b>
                </p>
                <ul class="modal-popup__cat">
                    <%--<li>Product Design</li>--%>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-05 -->

        <div id="cloth1" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-skaterboy.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Skaterboy</h5>
                <p>Quisquam vel libero consequuntur autem voluptas. Qui aut vero. Omnis fugit mollitia cupiditate voluptas. Aenean sollicitudin, lorem quis bibendum auctor.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-06 -->
                 <div id="cloth2" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-skaterboy.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Skaterboy</h5>
                <p>Quisquam vel libero consequuntur autem voluptas. Qui aut vero. Omnis fugit mollitia cupiditate voluptas. Aenean sollicitudin, lorem quis bibendum auctor.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-06 -->
                 <div id="cloth3" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-skaterboy.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Skaterboy</h5>
                <p>Quisquam vel libero consequuntur autem voluptas. Qui aut vero. Omnis fugit mollitia cupiditate voluptas. Aenean sollicitudin, lorem quis bibendum auctor.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-06 -->
                 <div id="ut1" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-skaterboy.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Skaterboy</h5>
                <p>Quisquam vel libero consequuntur autem voluptas. Qui aut vero. Omnis fugit mollitia cupiditate voluptas. Aenean sollicitudin, lorem quis bibendum auctor.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-06 -->
                 <div id="ut2" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-skaterboy.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Skaterboy</h5>
                <p>Quisquam vel libero consequuntur autem voluptas. Qui aut vero. Omnis fugit mollitia cupiditate voluptas. Aenean sollicitudin, lorem quis bibendum auctor.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-06 -->
                 <div id="ut3" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-skaterboy.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Skaterboy</h5>
                <p>Quisquam vel libero consequuntur autem voluptas. Qui aut vero. Omnis fugit mollitia cupiditate voluptas. Aenean sollicitudin, lorem quis bibendum auctor.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div>
        <!-- end modal-06 -->
        </section>
            <!-- end s-portfolio -->


  <!-- footer
    ================================================== -->
    <footer class="s-footer">
        <div class="row">
            <div class="column large-4 medium-6 w-1000-stack s-footer__social-block">
                <ul class="s-footer__social">
                    <li><a href="#0"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                    <li><a href="#0"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#0"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#0"><i class="fab fa-dribbble" aria-hidden="true"></i></a></li>
                    <li><a href="#0"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                </ul>
            </div>

           <div class="column large-7 medium-6 w-1000-stack ss-copyright">
                <span>© Copyright Helping Hand</span> 
                <span>Design by <a href="#bookingfinal.aspx">KKP</a></span>
            </div>
        </div>

        <div class="ss-go-top">
            <a class="smoothscroll" title="Back to Top" href="#top">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M6 4h12v2H6zm5 10v6h2v-6h5l-6-6-6 6z"/></svg>
            </a>
        </div> <!-- end ss-go-top -->
    </footer>


    <!-- Java Script
    ================================================== -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

        </div>
    </form>
</body>
</html>
