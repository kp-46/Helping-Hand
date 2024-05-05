<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>User Registration</title>
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


    <!-- home s-dark
    ================================================== -->
            <section  class="s-portfolio target-section">
     <div class="row comment-respond">

                <!-- START respond -->
                <div id="respond" class="column">

                  <h2 align="center">Registration</h2>
               
                <fieldset>

                    <div class="column large-8 medium-12 align-x-center ">
                                 <div class="form-field align-x-center">
                                <asp:TextBox id="fname" runat="server" Placeholder="First Name" class="h-full-width h-remove-bottom"/>&nbsp;&nbsp;
                                <asp:RequiredFieldValidator id="reg_name" runat="server" ErrorMessage="*Required" ControlToValidate="fname" ForeColor="Red" Display="Static"/>
                   
                                <%--<input name="cName" id="cName" class="h-full-width h-remove-bottom" placeholder="Your Name" value="" type="text">--%>
                            </div>
                      <div class="form-field">
                                <asp:TextBox id="lname" runat="server" Placeholder="Last Name" class="h-full-width h-remove-bottom"/>&nbsp;&nbsp;
                                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="lname" ForeColor="Red" Display="Static"/>
                   
                                <%--<input name="cName" id="cName" class="h-full-width h-remove-bottom" placeholder="Your Name" value="" type="text">--%>
                            </div>

                            <div class="form-field">
                                <asp:TextBox id="txtemail" runat="server" Placeholder="Email-Id" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="reg_2" runat="server" ErrorMessage="*Required" ControlToValidate="txtemail" ForeColor="Red" Display="Static"/>
                                <asp:RegularExpressionValidator id="reg_email" runat="server" ErrorMessage="Invalid Email-Id" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                                <%--<input name="cEmail" id="cEmail" class="h-full-width h-remove-bottom" placeholder="Your Email" value="" type="text">--%>
                            </div>

                            <div class="form-field">
                                <asp:TextBox id="txtcont" runat="server" Placeholder="Contact Number" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="txtcont" ForeColor="Red" Display="Static"/>
                                <asp:RegularExpressionValidator id="regexval" runat="server" ErrorMessage="Invalid Number" ControlToValidate="txtcont" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                <%--<input name="cWebsite" id="cWebsite" class="h-full-width h-remove-bottom" placeholder="Website" value="" type="text">--%>
                            </div>

                            <div class="message form-field">
                                <asp:TextBox id="txtpass" runat="server" Placeholder="Password" class="h-full-width h-remove-bottom"/>&nbsp;&nbsp;
                                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="txtpass" ForeColor="Red" Display="Static"/>
                                <%--<textarea name="cMessage" id="cMessage" class="h-full-width h-remove-bottom" placeholder="Your Message"></textarea>--%>
                            </div>

                    <div class="message form-field">
                                <asp:TextBox id="txtconpass" runat="server" Placeholder="Confirm Your Password" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="txtconpass" ForeColor="Red" Display="Static"/>
                                 <asp:CompareValidator id="cust1" runat="server" ErrorMessage="Must be same as password" ControlToCompare="txtpass" ControlToValidate="txtconpass" ForeColor="Red"/>
                                <%--<textarea name="cMessage" id="cMessage" class="h-full-width h-remove-bottom" placeholder="Your Message"></textarea>--%>
                            </div>

                    <asp:Button id="btn_reg" runat="server" Text="Register" class="btn btn--primary btn-wide btn--large h-full-width" OnClick="btn_reg_Click"/>
                            <%--<input name="submit" id="submit" class="btn btn--primary btn-wide btn--large h-full-width" value="Add Comment" type="submit">--%>

                         </div>
                        </fieldset>
                       </div>       
                <!-- END respond-->

            </div> <!-- end comment-respond -->
            <%-- <div class="row section-head">
            <div class="column large-3 medium-12" data-aos="fade-up">--%>         
    </section><!-- end s-contact -->


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
