<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about us.aspx.cs" Inherits="about_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

   
    <head id="Head1" runat="server">
    
     <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8" />
    <title>User Login</title>
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

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
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png"/>
    <link rel="manifest" href="site.webmanifest"/>
   
        
</head>
<body>
    <form id="form1" runat="server">
         
       
            
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

          <!-- about
    ================================================== -->
    <section id="about" class="s-about target-section">

        <div class="row section-head">
            <div class="column large-3 medium-12" >
                <h2>About Us</h2>
                <p class="desc">This is what we are.</p><br />
                <p class="desc">Our Goal Is to Make Our Customers' Lives Better</p>
            </div>

            <div class="column large-8 medium-12 align-x-right" >
                <p class="lead">
               Life is too short to clean your own home! Our team at The Helping Hand is here for you. We provide elite cleaning services designed to keep your home sparkling and beautiful so that you can focus on things that matter more, like your family and friends.
                </p>
            </div>
        </div> <!-- end section-head -->

        <div class="row">
            <div class="column">
                <%--<h4>Our Work Process.</h4>--%>
            </div>
        </div>

        <div class="row block-large-1-4 block-medium-1-2 block-mob-full process-block">

            <div class="column process" >
                <h6>Quick, Simple & Convenient</h6>
    
                <p>
                 Don't waste hours on calls and quotes. Our easy to use platform lets you get an appointment and get on with your day - woohoo! We provide you easy to use user friendly website which can be accessible through any platform 
                </p>
            </div>
   
            <div class="column process" >
               <h6>MISSION.</h6>
   
                <p>
                   Helping Hand Provides an extra help in completing day to day tasks of people. We provide a fully talented and fully vaccinated workers to our clients. We aim to provide you better quality services, which helps reduce your day to day burden. 
                </p>
            </div>
   
            <div class="column process" >
                <h6>EXPERIENCE.</h6>
   
                <p>
               Helping Hand is a fully integrated home cleaning services company that provides comprehensive, high quality, reliable cleaning solutions to residential clients.

Our diligent management and work ethic are central to Helping Hand service business philosophy and critical to delivering consistent, quality cleaning services. We pride ourselves on making our management accountable to the client through direct access and interaction with our managing director.
                </p>
            </div>
   
            <div class="column process" >
                <h6>Trust and Safety.</h6>
    
                <p>
                Each cleaner must undergo an extensive background check, DOJ SMART screen, interviews, and address verification for your safety. Ensuring you that each and every worker is trustable and experienced in their respective feild. Every worker is fully vaccinated. 
                </p>
            </div>
   
         </div> <!-- end process-block -->

        <%-- <div class="row">
            <div class="column" >
                <h4>Meet The Team.</h4>
            </div>
        </div>

        <div class="row block-large-1-4 block-medium-1-3 block-tab-1-2 block-500-stack team-block">

            <div class="column team-member" >
                <div class="team-member__pic">
                    <img src="images/team/team-member-01.jpg" 
                         srcset="images/team/team-member-01.jpg 1x, 
                                 images/team/team-member-01@2x.jpg 2x" alt="">
                </div>
                <div class="team-member__info">
                    <p class="team-member__name">
                        Naruto Uzumaki
                        <span>Project Manager</span>
                    </p>
                    <ul class="team-member__social">
                        <li><a href="#0"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-dribbble" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>

            <div class="column team-member" >
                <div class="team-member__pic">
                    <img src="images/team/team-member-02.jpg" 
                         srcset="images/team/team-member-02.jpg 1x, 
                                 images/team/team-member-02@2x.jpg 2x" alt="">
                </div>
                <div class="team-member__info">
                    <p class="team-member__name">
                        Sakura Haruno
                        <span>Design Researcher</span>
                    </p>
                    <ul class="team-member__social">
                        <li><a href="#0"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-dribbble" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>

            <div class="column team-member" >
                <div class="team-member__pic">
                    <img src="images/team/team-member-03.jpg" 
                         srcset="images/team/team-member-03.jpg 1x, 
                                 images/team/team-member-03@2x.jpg 2x" alt="">
                </div>
                <div class="team-member__info">
                    <p class="team-member__name">
                        Kakashi Hatake
                        <span>UI/UX Designer</span>
                    </p>
                    <ul class="team-member__social">
                        <li><a href="#0"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-dribbble" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>

            <div class="column team-member" >
                <div class="team-member__pic">
                    <img src="images/team/team-member-04.jpg" 
                         srcset="images/team/team-member-04.jpg 1x, 
                                 images/team/team-member-04@2x.jpg 2x" alt="">
                </div>
                <div class="team-member__info">
                    <p class="team-member__name">
                        Shikamaru Nara
                        <span>Front-End Developer</span>
                    </p>
                    <ul class="team-member__social">
                        <li><a href="#0"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-dribbble" aria-hidden="true"></i></a></li>
                        <li><a href="#0"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>

        </div> <!-- end team-block -->--%>

    </section> <!-- end s-about -->
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
        

    
    </form>
</body>
</html>
