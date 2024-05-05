<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Helping-Hand</title>
    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/vendor.css"/>

    <!-- script
    ================================================== -->
    <script src="js/modernizr.js"></script>
    <script defer src="js/fontawesome/all.min.js"></script>

    <!-- favicons
    ================================================== -->
    <link rel="apple-touch-icon" sizes="180x180" href="img/logo.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="img/logo.png"/>
    <link rel="icon" type="image/png" sizes="16x16" href="img/logo.png"/>
    <link rel="manifest" href="site.webmanifest"/>


</head>
<body>
    <form id="form1" runat="server">
    <div>
         <!-- preloader
    ================================================== -->
    <div id="preloader">
        <div id="loader"></div>
    </div>
         <!-- <li class="current"><a class="smoothscroll" href="#home">Home</a></li>
                    <li><a class="smoothscroll" href="#services">Services</a></li>
                    <li><a class="smoothscroll" href="#portfolio">Portfolio</a></li>
                    <li><a class="smoothscroll" href="#blog">Journal</a></li>
                    <li><a class="smoothscroll" href="#about">About Us</a></li>
                    <li><a class="smoothscroll" href="#contact">Contact</a></li>
                    <li><a class="smoothscroll" href="login.aspx">Login</a></li>-->

    <!-- header
    ================================================== style=" margin-right: 4rem; position: center; margin-top:3rem; margin-bottom:0rem;" 
        <asp:Linkbutton ID="Linkbutton1" runat="server" PostBackUrl="~/index.aspx"  /> --color-1: hsla(182, 82%, 38%, 1);
    --color-2: hsla(275, 23%, 28%, 1);
    --color-3: hsla(13, 90%, 58%, 1);
-->
    <header class="s-header">
        <div class="row">

            
                <a href="index.aspx">
                    <img src="img/logo2.png" alt="Helping-Hand" height="100" width="100"  style=" margin-right: 4rem; position:relative; margin-top:2rem; margin-bottom:0rem; "  />
                </a>
            

            <nav class="s-header__nav" style=" font-size:medium; margin-right: 4rem; position: inherit; margin-top:2rem; margin-bottom:0rem; " >
                <ul>
                                 
              
                    <li style="background-color: hsla(182, 82%, 38%, 1);" ><a href="#">Home</a></li>
                    <li><asp:Linkbutton ID="serv" runat="server" PostBackUrl="~/services.aspx" Text="Our Services"/></li>
                    <li><asp:Linkbutton ID="admin3" runat="server" PostBackUrl="~/admin_user.aspx" Text="Users"/></li>
                    <li><asp:Linkbutton ID="admin2" runat="server" PostBackUrl="~/demo.aspx" Text="Maids"/></li>
                    <li><asp:Linkbutton ID="admin1" runat="server" PostBackUrl="~/add_maid.aspx" Text="Add Maid"/></li>
                    <li><asp:Linkbutton ID="book" runat="server" PostBackUrl="~/form_user.aspx" Text="Book"/></li>
                    <li><asp:Linkbutton ID="ords" runat="server" PostBackUrl="~/confirmpagefinal.aspx" Text="Orders"/></li>
                    <li><asp:Linkbutton ID="conf_ord" runat="server" PostBackUrl="~/maid_side_user_info.aspx" Text="Orders"/></li>
                     <li><asp:Linkbutton ID="maid_ords" runat="server" PostBackUrl="~/maidsidedisplay.aspx" Text="Requests"/></li>
                    <li><asp:Linkbutton ID="abtus" runat="server" PostBackUrl="~/about us.aspx" Text="About Us"/></li>
                    <li><asp:Linkbutton ID="cntus" runat="server" PostBackUrl="#contact" Text="Contact Us"/></li>
                    <li><asp:Linkbutton ID="login" runat="server" PostBackUrl="~/login.aspx" Text="Login"/></li>
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


    <!-- home
    ================================================== -->
    <section id="home" class="s-home target-section" data-parallax="scroll" data-image-src="img/h1.jpg" data-natural-width="3000" data-natural-height="2000">

        <div class="s-home__content">

            <div class="s-home__slider">

                <div class="s-home__slide s-home__slide--1">
                    <div class="row">
                        <div class="column large-12 s-home__slide-text">
                           <h2 style="color:white; text-size-adjust:auto;">
                            See some of <a href="services.aspx" title="">our Services</a> 
                            </h2>
                        </div>
                    </div>
                </div> <!-- end s-home__slide -->

                <div class="s-home__slide s-home__slide--2">
                    <div class="row">
                        <div class="column large-12 s-home__slider-text">
                            <h2>
                            Read our<a href="#t&c" title="">Terms & Conditions</a> or 
                            <a href="#contact" title="">get in 
                            touch</a> to discuss how we could help you.
                            </h2>
                        </div>
                    </div>
                </div> <!-- end s-home__slide -->
               
            </div> <!-- end s-home__slider -->
            
        </div> <!-- end s-home__content -->
        
        <div class="s-home__nav-arrows">
            <div class="s-home__arrow-prev">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12.707 17.293L8.414 13H18v-2H8.414l4.293-4.293-1.414-1.414L4.586 12l6.707 6.707z"/></svg>
            </div>
            <div class="s-home__arrow-next">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M11.293 17.293l1.414 1.414L19.414 12l-6.707-6.707-1.414 1.414L15.586 11H6v2h9.586z"/></svg>
            </div>
        </div> <!-- end s-home__nav-arrows -->

        <div class="s-home__line"></div>

    </section> <!-- end s-home -->


      
         <!-- services
    ================================================== -->
          <!-- CTA
    ================================================== -->
    <section class="s-cta ss-dark">

        <div class="row heading-block heading-block--center" data-aos="fade-up">
            <div class="column">
                <h2 class="section-desc">
                    Need a great reliable House Maid?
                </h2>
            </div>
        </div> <!-- end heading-block -->

        <div class="row cta-content" data-aos="fade-up">
            <div class="column">
                <p>
                We highly recommend <a href="index.aspx">Helping Hand</a>.
               Super Efficient and Super Helpful Maids.Available.
                    To Clean,Cook or Wash for You, At Your House.
                </p>
                <asp:LinkButton class="btn h-full-width" ID="ser" runat="server" Text="Services" PostBackUrl="~/services.aspx"></asp:LinkButton>
                
            </div>
        </div> <!-- end ad-content -->

    </section> <!-- end s-cta -->


 <!-- contact
    ================================================== -->
    <section id="contact" class="s-contact target-section s-dark">

        <div class="row section-head">
            <div class="column large-3 medium-12">
                <h2>Contact Us</h2>
                <p class="desc">Get in touch with us.</p>
            </div>
        </div> <!-- end section-head -->

        <div class="row s-contact__content">

            <div class="column large-7 medium-12">
                <h3 class="display-1">
                   This is a verified Home Cleaning Services website & We provide the Best and TrustWorthy Workers to our precious Customers.
                    We assure you that all the workers given in this website are trustworthy and fully Vaccinated. 
                    But If there is any problem regarding any services or workers that bothered you
                    You can Hit the number given below or else Ping our inbox anytime of the day. 

                </h3>

                <div class="s-contact__email-us">
                    <a href="mailto:#0" class="btn btn--primary h-full-width">Let's Talk</a>
                </div>
            </div>

            <div class="column large-4 medium-12 s-contact__info-blocks">
                <div class="row">
                    

                    <div class="column large-12 medium-6 tab-12">
                        <div class="s-contact__info-block">
                            <span class="s-contact__info-block-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"><path d="M17.707 12.293a.999.999 0 00-1.414 0l-1.594 1.594c-.739-.22-2.118-.72-2.992-1.594s-1.374-2.253-1.594-2.992l1.594-1.594a.999.999 0 000-1.414l-4-4a.999.999 0 00-1.414 0L3.581 5.005c-.38.38-.594.902-.586 1.435.023 1.424.4 6.37 4.298 10.268s8.844 4.274 10.269 4.298h.028c.528 0 1.027-.208 1.405-.586l2.712-2.712a.999.999 0 000-1.414l-4-4.001zm-.127 6.712c-1.248-.021-5.518-.356-8.873-3.712-3.366-3.366-3.692-7.651-3.712-8.874L7 4.414 9.586 7 8.293 8.293a1 1 0 00-.272.912c.024.115.611 2.842 2.271 4.502s4.387 2.247 4.502 2.271a.991.991 0 00.912-.271L17 14.414 19.586 17l-2.006 2.005z"/></svg>
                            </span>
        
                            <h5>Say hello</h5>
                            <p>
                             Hit Us On:29384302
                   <br /> Ping Our Inbox:project211921@gmail.com

                            </p>
                        </div> <!-- end s-contact__info-block -->
                    </div>
                </div> <!-- end row -->
            </div> <!-- end s-contact__info-blocks -->

        </div> <!-- end s-contact__content -->

    </section> <!-- end s-contact class="s-services target-section s-dark"-->
         <!-- about
    ================================================== -->
    <section id="t&c" class="s-about target-section">

        <div class="row section-head">
            <div class="column large-3 medium-12" data-aos="fade-up">
                <h2>Terms & conditions</h2>
                <p class="desc">Read carefullly to ensure your safety and security.</p>
            </div>

            <div class="column large-8 medium-12 align-x-right" data-aos="fade-up">
                <p class="lead">
                 Helping Hand is a Cleaning service website, built to provide public services to the customer. We believe in making life of humankind easy by providing extra hand in their daily  household tasks. Though this site is easy to use and is open to everyone here are some of the terms and condtions that users should know before using this website: </p>
            </div>
        </div> <!-- end section-head -->

        <div class="row">
           <div class="column large-8 medium-12 align-x-center" data-aos="fade-up">
                <h4>Helping Hand Promises to provide Quality Services By: </h4>
            </div>
        </div>
         <div class="column large-8 medium-12 align-x-center" data-aos="fade-up">
        <ul>

            <li>Providing professional cleaning services that is licensed, trusted, bonded and fully vaccinated.</li>
            <li>Providing professional workers on the specified dates. </li>
        </ul>
             </div>
        

        <div class="row">
            <div class="column large-8 medium-12 align-x-center" data-aos="fade-up">
                <h4>In order to provide you with best services :  </h4>
            </div>
        </div>
        <div class="column large-8 medium-12 align-x-center" data-aos="fade-up">
            <ul>


            <li> make your house accessible & ready to be cleaned. </li>
            <li>Helping hand will not be responsible for damage or breakerage of any kind of items.</li>
            <li>Helping Hand will not tolerate harsh or rude behavoiur towards their workers. Immediate actions will be taken if any complained will be received.</li>
            <li>Helping hand will not accept any last minute addition to services. For that user has to login the site again. </li>
            <li>All kinds of payments will be accpeted via cash.</li>
            <li>Do not spam request repeatedly Helping hand may take action against that. </li>
            <li>Cannot change services Once the booking is confirmed.</li>
            <li>If customer is dissatified by any worker or services he/she can complain it via our email or telephone.</li>
            <li>If any customers booked worker for 6months payment will be taken on monthly basis. If any slots will be missed Helping hand will be give 1 week time to pay the missed slot. </li>

        </ul>
             </div>
        
    </section> <!-- end s-about -->


       <%-- <div class="row block-large-1-4 block-medium-1-2 block-mob-full process-block">

            <div class="column process" data-aos="fade-up">
                <h6>Explore.</h6>
    
                <p>
             
                </p>
            </div>
   
            <div class="column process" data-aos="fade-up">
               <h6>Design.</h6>
   
                <p>
                Aliquam cum molestiae quia eos consequatur qui. Tempora sit doloribus dolores iure quod quasi 
                totam eum eos. Nulla non sunt eum in itaque qui non sit exercitationem. Sunt sed quasi nobis 
                quaerat dolor et ad. Sagittis sem nibh id elit. Debitis consequuntur quasi fugit.
                </p>
            </div>
   
            <div class="column process" data-aos="fade-up">
                <h6>Develop.</h6>
   
                <p>
                Voluptatem error perspiciatis fugit libero nemo. Repudiandae consequatur qui et quidem dolorem 
                necessitatibus necessitatibus voluptatibus. Debitis consequuntur quasi fugit sapiente. Odit odio laboriosam 
                vitae dolores molestias. Est consectetur et.
                </p>
            </div>
   
            <div class="column process" data-aos="fade-up">
                <h6>Deliver.</h6>
    
                <p>
                Earum a sit placeat nostrum dolorum. Ut qui autem omnis magni. Dignissimos quasi molestiae tenetur ipsa 
                voluptatum similique iste illo nulla. Ut sunt maiores dolorem recusandae ea. Corporis aperiam repellat quaerat 
                et ab dolores est fuga non.
                </p>
            </div>
   
         </div> <!-- end process-block -->--%>

       


   

    <%--<section id="t&c" class="s-portfolio target-section">

        <div class="row section-head">
            <div class="column large-3 medium-12" data-aos="fade-up">
                <h2>Terms & Conditions</h2>
                <p class="desc">Read carefullly to ensure your safety and security.</p>
            </div>

            <div class="column large-8 medium-12 align-x-right" data-aos="fade-up">
                <p class="lead">
               Helping Hand is a Cleaning service website, built to provide public services to the customer. We believe in making life of humankind easy by providing extra hand in their daily  household tasks. Though this site is easy to use and is open to everyone here are some of the terms and condtions that users should know before using this website:

                </p>
            </div>
        </div> <!-- end section-head -->

        <h5>Helping Hand Promises to provide Quality Services By: </h5>
        <div class="row block-large-1-3 block-medium-1-2 block-tab-full services-list">

            <div class="column services-item" data-aos="fade-up">
                
                <p>
                Ea sint cum. Ullam consectetur nostrum 
                voluptatem fugiat et dolor non totam sed. Et quia sit aliquam et.
                Voluptatibus sit facere aperiam tempore est nam et cupiditate. Necessitatibus 
                nisi dolorem enim sit aut earum et praesentium. Impedit recusandae consequatur 
                beatae deleniti impedit non et. Eos consequuntur alias. Rerum sit est est 
                tenetur soluta.
                </p>
            </div> <!-- end services-item -->

            <div class="column services-item" data-aos="fade-up">
                <h5>Product Design</h5>
                <p>
                In aspernatur autem enim maxime mollitia. Debitis rerum alias. Facilis qui est qui 
                impedit. Dolorum fuga provident. Debitis eum non odit facilis ut quibusdam porro 
                ipsa. Optio aut similique vero dolore sunt laudantium et autem quo. Earum eligendi dolorem 
                aut quae modi. Cumque impedit voluptatem molestiae a. Perspiciatis at tempora 
                dicta molestiae iure dolore.
                </p>
            </div> <!-- end services-item -->

            <div class="column services-item" data-aos="fade-up">
                <h5>UX Research</h5>
                <p>
                Repellat commodi numquam hic odit voluptatem saepe praesentium. Delectus itaque nemo 
                aut ipsam similique et veniam. Assumenda rerum ut ea soluta distinctio beatae consectetur 
                omnis libero. Ratione ipsum sapiente suscipit. Dolorem id doloremque. Nihil cupiditate 
                sed molestiae quia dolorem sit iure doloremque. Rerum ea officia pariatur. 
                </p>
            </div> <!-- end services-item -->

            <div class="column services-item" data-aos="fade-up">
                <h5>Frontend Development</h5>
                <p>
                Ea sint cum. Ullam consectetur nostrum 
                voluptatem fugiat et dolor non totam sed. Et quia sit aliquam et.
                Voluptatibus sit facere aperiam tempore est nam et cupiditate. Necessitatibus 
                nisi dolorem enim sit aut earum et praesentium. Impedit recusandae consequatur 
                beatae deleniti impedit non et. Eos consequuntur alias. Rerum sit est est 
                tenetur soluta.
                </p>
            </div> <!-- end services-item -->

            <div class="column services-item" data-aos="fade-up">
                <h5>E-Commerce</h5>
                <p>
                Dolorem fugit similique. In sed expedita consequuntur quos dolor eos iusto. Quisquam sint harum nam aut.
                Fuga aspernatur dolor est. Aliquid odit nostrum et eum reiciendis fugit est consequatur. Rerum eaque 
                eligendi doloribus quidem iure error voluptatem velit. Veritatis molestiae fuga. Voluptatem 
                odit voluptatem doloremque nobis. Non hic ipsa illum.
                </p>
            </div> <!-- end services-item -->

            <div class="column services-item" data-aos="fade-up">
                <h5>Illustration</h5>
                <p>
                Est nesciunt et rerum sapiente. Ullam impedit labore magni qui. Consequuntur fugiat vel id explicabo. 
                Inventore suscipit sint totam accusamus aperiam distinctio. Rerum nihil maxime non maiores. Praesentium modi facilis ex.
                Velit officiis id. Voluptates id cupiditate sit eligendi at nemo rerum rem non. Quae rem quia dignissimos ex 
                laudantium distinctio ipsam. 
                </p>
            </div> <!-- end services-item -->

        </div> <!-- end services-list -->

    </section> <!-- end s-services -->--%>


    <!-- portfolio
    ================================================== -->
    <%--<section id="portfolio" class="s-portfolio target-section">

        <div class="row section-head">
            <div class="column large-3 medium-12" data-aos="fade-up">
                <h2>Portfolio</h2>
                <p class="desc">Check out our latest projects.</p>
            </div>

            <div class="column large-8 medium-12 align-x-right" data-aos="fade-up">
                <p class="lead">
                At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
                praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
                excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio 
                dignissimos ducimus qui blanditiis praesentium.
                </p>
            </div>
        </div> <!-- end section-head -->

        <div class="row block-large-1-3 block-medium-1-2 block-mob-full folio-list">

            <div class="column folio-item" data-aos="fade-up">
                <a href="#modal-01" class="folio-item__thumb" data-lity>
                    <img src="images/portfolio/droplet.jpg" 
                         srcset="images/portfolio/droplet.jpg 1x, 
                                 images/portfolio/droplet@2x.jpg 2x" alt="">
                    <span class="folio-item__text">
                        Droplet
                    </span>
                </a>
            </div> <!-- end folio-item -->

            <div class="column folio-item" data-aos="fade-up">
                <a href="#modal-02" class="folio-item__thumb" data-lity>
                    <img src="images/portfolio/lamp.jpg" 
                         srcset="images/portfolio/lamp.jpg 1x, 
                                 images/portfolio/lamp@2x.jpg 2x" alt="">
                    <span class="folio-item__text">
                        The Lamp
                    </span>
                </a>
            </div> <!-- end folio-item -->

            <div class="column folio-item" data-aos="fade-up">
                <a href="#modal-03" class="folio-item__thumb" data-lity>
                    <img src="images/portfolio/minimalismo.jpg" 
                         srcset="images/portfolio/minimalismo.jpg 1x, 
                                 images/portfolio/minimalismo@2x.jpg 2x" alt="">
                    <span class="folio-item__text">
                        Minimalismo
                    </span>
                </a>
            </div> <!-- end folio-item -->

            <div class="column folio-item" data-aos="fade-up">
                <a href="#modal-04" class="folio-item__thumb" data-lity>
                    <img src="images/portfolio/shutterbug.jpg" 
                         srcset="images/portfolio/shutterbug.jpg 1x, 
                                 images/portfolio/shutterbug@2x.jpg 2x" alt="">
                    <span class="folio-item__text">
                        Shutterbug
                    </span>
                </a>
            </div> <!-- end folio-item -->

            <div class="column folio-item" data-aos="fade-up">
                <a href="#modal-05" class="folio-item__thumb" data-lity>
                    <img src="images/portfolio/fuji.jpg" 
                         srcset="images/portfolio/fuji.jpg 1x, 
                                 images/portfolio/fuji@2x.jpg 2x" alt="">
                    <span class="folio-item__text">
                        Fuji
                    </span>
                </a>
            </div> <!-- end folio-item -->

            <div class="column folio-item" data-aos="fade-up">
                <a href="#modal-06" class="folio-item__thumb" data-lity>
                    <img src="images/portfolio/skaterboy.jpg" 
                         srcset="images/portfolio/skaterboy.jpg 1x, 
                                 images/portfolio/skaterboy@2x.jpg 2x" alt="">
                    <span class="folio-item__text">
                        Skaterboy
                    </span>
                </a>
            </div> <!-- end folio-item -->

        </div> <!-- end folio-list -->


        <!-- Modal Popup
        =========================================================== -->
        <div id="modal-01" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-droplet.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Droplet</h5>
                <p>Odio soluta enim quos sit asperiores rerum rerum repudiandae cum. Vel voluptatem alias qui assumenda iure et expedita voluptatem. Ratione officiis quae.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div> <!-- end modal-01 -->

        <div id="modal-02" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-lamp.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>The Lamp</h5>
                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
                <ul class="modal-popup__cat">
                    <li>Branding</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div><!-- end modal-02 -->

        <div id="modal-03" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-minimalismo.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Minimalismo</h5>
                <p>Exercitationem reprehenderit quod explicabo consequatur aliquid ut magni ut. Deleniti quo corrupti illum velit eveniet ratione necessitatibus ipsam mollitia.</p>
                <ul class="modal-popup__cat">
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div><!-- end modal-03 -->

        <div id="modal-04" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-shutterbug.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Shutterbug</h5>
                <p>Dolores velit qui quos nobis. Aliquam delectus voluptas quos possimus non voluptatem voluptas voluptas. Est doloribus eligendi porro doloribus voluptatum.</p>
                <ul class="modal-popup__cat">
                    <li>E-Commerce</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div><!-- end modal-04 -->

        <div id="modal-05" class="modal-popup lity-hide">

            <img src="images/portfolio/gallery/g-fuji.jpg" alt="" />

            <div class="modal-popup__desc">
                <h5>Fuji</h5>
                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>
                <ul class="modal-popup__cat">
                    <li>Product Design</li>
                </ul>
            </div>

            <a href="https://www.behance.net/" class="modal-popup__details">Project link</a>

        </div><!-- end modal-05 -->

        <div id="modal-06" class="modal-popup lity-hide">

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

        </div><!-- end modal-06 -->

    </section>--%> <!-- end s-portfolio -->


                
    <!-- testimonials
    ================================================== -->
   <%-- <section id="testimonials" class="s-testimonials">

        <div class="row section-head">
            <div class="column large-3 medium-12" data-aos="fade-up">
                <h2>Testimonials</h2>
                <p class="desc">What our clients are saying.</p>
            </div>

        </div> <!-- end section-head -->

        <div class="row collapse">

            <div class="column testimonial-slider-outer">

                <div class="testimonial-slider" data-aos="fade-up">

                    <div class="testimonial-slider__slide">
                        <div class="testimonial-slider__author">
                            <img src="images/avatars/user-02.jpg" alt="Author image" class="testimonial-slider__avatar">
                            <cite class="testimonial-slider__cite">
                                <strong>Tim Cook</strong>
                                <span>CEO, Apple</span>
                            </cite>
                        </div>
                        <p>
                        Molestiae incidunt consequatur quis ipsa autem nam sit enim magni. Voluptas tempore rem. 
                        Explicabo a quaerat sint autem dolore ducimus ut consequatur neque.  Nisi dolores quaerat fuga rem nihil nostrum.
                        Laudantium quia consequatur molestias delectus culpa.
                        </p>
                    </div> <!-- end testimonials__slide -->
    
                    <div class="testimonial-slider__slide">
                        <div class="testimonial-slider__author">
                            <img src="images/avatars/user-03.jpg" alt="Author image" class="testimonial-slider__avatar">
                            <cite class="testimonial-slider__cite">
                                <strong>Sundar Pichai</strong>
                                <span>CEO, Google</span>
                            </cite>
                        </div>
                        <p>
                        Excepturi nam cupiditate culpa doloremque deleniti repellat. Veniam quos repellat voluptas animi adipisci.
                        Nisi eaque consequatur. Voluptatem dignissimos ut ducimus accusantium perspiciatis.
                        Quasi voluptas eius distinctio. Atque eos maxime.
                        </p>
                    </div> <!-- end testimonials__slide -->
    
                    <div class="testimonial-slider__slide">
                        <div class="testimonial-slider__author">
                            <img src="images/avatars/user-04.jpg" alt="Author image" class="testimonial-slider__avatar">
                            <cite class="testimonial-slider__cite">
                                <strong>Satya Nadella</strong>
                                <span>CEO, Microsoft</span>
                            </cite>
                        </div>
                        <p>
                        Repellat dignissimos libero. Qui sed at corrupti expedita voluptas odit. Nihil ea quia nesciunt. Ducimus aut sed ipsam.  
                        Autem eaque officia cum exercitationem sunt voluptatum accusamus. Quasi voluptas eius distinctio.
                        Voluptatem dignissimos ut.
                        </p>
                    </div> <!-- end testimonials__slide -->
    
                    <div class="testimonial-slider__slide">
                        <div class="testimonial-slider__author">
                            <img src="images/avatars/user-05.jpg" alt="Author image" class="testimonial-slider__avatar">
                            <cite class="testimonial-slider__cite">
                                <strong>Jeff Bezos</strong>
                                <span>CEO, Amazon</span>
                            </cite>
                        </div>
                        <p>
                        Nunc interdum lacus sit amet orci. Vestibulum dapibus nunc ac augue. Fusce vel dui. In ac felis 
                        quis tortor malesuada pretium. Curabitur vestibulum aliquam leo. Qui sed at corrupti expedita voluptas odit. 
                        Nihil ea quia nesciunt. Ducimus aut sed ipsam.
                        </p>
                    </div> <!-- end testimonials__slide -->

                </div> <!-- end testimonial slider -->
                
            </div> <!-- end column -->

        </div> <!-- end row -->

    </section> <!-- end s-testimonials -->--%>


  


   

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
