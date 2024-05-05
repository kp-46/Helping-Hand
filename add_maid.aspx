<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_maid.aspx.cs" Inherits="add_maid" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>Kreative</title>
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
<body>
     <form id="form1" runat="server">
    <div>
        
    <header class="s-header">
        <div class="row">

            
                <a href="index.aspx">
                    <img src="img/logo2.png" alt="Helping-Hand" height="100" width="100"  style=" margin-right: 4rem; position:relative; margin-top:2rem; margin-bottom:0rem; "  />
                </a>
            

            <nav class="s-header__nav" style=" font-size:medium; margin-right: 4rem; position: inherit; margin-top:0; margin-bottom:0rem; " >
                <ul>
                    
                    <li style="background-color: hsla(182, 82%, 38%, 1);" ><a href="index.aspx">Home</a></li>
                   
                    <li><asp:linkbutton id="admin3" runat="server" postbackurl="~/admin_user.aspx" text="Users"/></li>
                    <li><asp:Linkbutton ID="admin2" runat="server" PostBackUrl="~/demo.aspx" Text="Maids"/></li>
                    <li><asp:Linkbutton ID="admin1" runat="server" PostBackUrl="~/add_maid.aspx" Text="Add Maid"/></li>
                    <li><asp:Linkbutton ID="abtus" runat="server" PostBackUrl="~/about us.aspx" Text="About Us"/></li>
                    <li><asp:Linkbutton ID="cntus" runat="server" PostBackUrl="~/index.aspx" Text="Contact Us"/></li>
                    <li><asp:Linkbutton ID="login" runat="server" PostBackUrl="~/login.aspx" Text="Login"/></li>
                    <%--<li>class="folio-item__thumb"<a href="#login"  data-lity>Login</a></li>--%>
                    <li><asp:Linkbutton ID="logout" runat="server" Text="LogOut" OnClick="logout_Click"/></li>
                   <%-- <li><asp:Linkbutton ID="Linkbutton4" runat="server" PostBackUrl="~/bookingfinal.aspx" Text="User Details"/></li>--%>
                   
                </ul>
            </nav>
               <a class="s-header__menu-toggle" href="#0" title="Menu">
                <span class="s-header__menu-icon"></span>
            </a>

        </div> <!-- end row -->
    </header> <!-- end s-header -->

          <!-- end s-header -->
                   <section id="portfolio" class="s-portfolio target-section">

                <div class="row section-head">
                    <div class="column large-3 medium-12">
                        <h2>Add Maid</h2>
                        <p class="desc">Enter Maid Details!</p>
                    </div>


            <fieldset>
                    <%-- <div class="form-field align-x-center">
                    <asp:Label ID="lblhead" Text="BOOKING FORM" runat="server" ForeColor="White" Font-Size="Larger"></asp:Label>
                         </div>--%>
                
                           <div class="column large-10 medium-10 align-x-right"> 
                            <div class="form-field align-x-right">
                             <asp:TextBox id="txtname" runat="server" Placeholder="Your Name" class="h-full-width h-remove-bottom"/>&nbsp;&nbsp;
                                <asp:RequiredFieldValidator id="reg_name" runat="server" ErrorMessage="*Required" ControlToValidate="txtname" ForeColor="Red" Display="Static"/>
                   
                                <%--<input name="cName" id="cName" class="h-full-width h-remove-bottom" placeholder="Your Name" value="" type="text">--%>
                            </div>
                            <div class="message form-field">
                                <asp:TextBox id="txtarea" runat="server" Placeholder="Prefered Area" class="h-full-width h-remove-bottom"/>&nbsp;&nbsp;
                                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="txtname" ForeColor="Red" Display="Static"/>
                                <%--<textarea name="cMessage" id="cMessage" class="h-full-width h-remove-bottom" placeholder="Your Message"></textarea>--%>
                            </div>
                            <div class="form-field">
                                <asp:TextBox id="txtcont" runat="server" Placeholder="Contact Number" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="txtcont" ForeColor="Red" Display="Static"/>
                                <%--<input name="cWebsite" id="cWebsite" class="h-full-width h-remove-bottom" placeholder="Website" value="" type="text">--%>
                            </div>

                            <div class="form-field">
                                <asp:TextBox id="txtaid" runat="server" Placeholder="Area ID" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="txtaid" ForeColor="Red" Display="Static"/>
                                <%--<input name="cWebsite" id="cWebsite" class="h-full-width h-remove-bottom" placeholder="Website" value="" type="text">--%>
                            </div>

                            <div >
                                <asp:Label id="lblimg" runat="server" Text="Upload Photo: " ForeColor="Gray" Font-Size="16px"/>
                               <asp:FileUpload Id="maid_img" runat="server" Width="20%" />
                                <asp:RequiredFieldValidator id="reg_img" runat="server" ErrorMessage="*Required" ControlToValidate="maid_img" ForeColor="Red" Display="Static"/>
                                </div>
                                <div >
                                 <asp:Label id="Label1" runat="server" Text="Upload Vaccination Certificate: " ForeColor="Gray" Font-Size="16px"/>
                               <asp:FileUpload Id="maid_vac" runat="server" Width="20%" />
                                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="maid_img" ForeColor="Red" Display="Static"/>
                                
                                <%--<input name="cEmail" id="cEmail" class="h-full-width h-remove-bottom" placeholder="Your Email" value="" type="text">--%>
                            </div>
                    <asp:Button id="btn_reg" runat="server" Text="Add Maid" class="btn btn--primary btn-wide btn--large h-full-width" OnClick="btn_reg_Click"/>
                   
                 </div>
                        </fieldset>
                    
                 </div>   
             </section>
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
                 </div>
    </form>
</body>
</html>
