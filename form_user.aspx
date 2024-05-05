<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_user.aspx.cs" Inherits="form_user" %>


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
            

            <nav class="s-header__nav" style=" font-size:medium; margin-right: 4rem; position: inherit; margin-top:2rem; margin-bottom:0rem; " >
                <ul>
                                 
              
                    <li style="background-color: hsla(182, 82%, 38%, 1);" ><a href="index.aspx">Home</a></li>
                    <li><asp:Linkbutton ID="serv" runat="server" PostBackUrl="~/services.aspx" Text="Our Services"/></li>
                    <li><asp:Linkbutton ID="Linkbutton1" runat="server" PostBackUrl="~/form_user.aspx" Text="Book"/></li>
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
         <section id="portfolio" class="s-portfolio target-section">

                <div class="row section-head">
                    <div class="column large-3 medium-12">
                        <h2>Services</h2>
                        <p class="desc">Check out our Top Services.</p>
                    </div>
                    <div class="column large-3 medium-12 align-x-right">
                        <p class="lead" style=" font-weight:500; font-size:x-large">Total - 
                        <asp:Label runat="server" ID="tot" Text="0"></asp:Label></p>
                    </div>
                    </div>
         <fieldset>
             
             
             <div class="column large-8 medium-12 align-x-right"> 
               <div class="form-field align-x-right">
                    <asp:DropDownList ID="ddl_time" runat="server"  AutoPostBack="true" Font-Size="X-Large" > <%--OnSelectedIndexChanged="ddl_time_SelectedIndexChanged"--%>
                        <asp:ListItem Value="0">Select Time Period</asp:ListItem>
                        <asp:ListItem Value="1">1 Day</asp:ListItem>
                         <asp:ListItem Value="2">1 Month</asp:ListItem>
                         <asp:ListItem Value="3">6 Months</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                 <div class="form-field">
                     <asp:Label runat="server" Text="kp" ID="v" Font-Size="Large" ForeColor="DarkRed"></asp:Label>

                 </div>
                
                
                        
             <asp:CheckBox Id="chk_Services" runat="server" OnCheckedChanged="chk_Services_CheckedChanged" AutoPostBack="true"/>
                            &nbsp&nbsp<asp:Label runat="server" Text="Cooking" Font-Size="Large" ID="lrm"></asp:Label>
             <asp:CheckBox Id="CheckBox1" runat="server"  OnCheckedChanged="chk_Services_CheckedChanged"   AutoPostBack="true"/>
                            &nbsp&nbsp<asp:Label runat="server" Text="Sweeping" Font-Size="Large" ID="ljin"></asp:Label>
             <asp:CheckBox Id="CheckBox2" runat="server" OnCheckedChanged="chk_Services_CheckedChanged" AutoPostBack="true"/>
                            &nbsp&nbsp<asp:Label runat="server" Text="Moping" Font-Size="Large" ID="lsuga"></asp:Label>
             <asp:CheckBox Id="CheckBox3" runat="server" OnCheckedChanged="chk_Services_CheckedChanged" AutoPostBack="true"/>
                            &nbsp&nbsp<asp:Label runat="server" Text="Washing Clothes" Font-Size="Large" ID="lhobi"></asp:Label>
             <asp:CheckBox Id="CheckBox4" runat="server" OnCheckedChanged="chk_Services_CheckedChanged" AutoPostBack="true"/>
                            &nbsp&nbsp<asp:Label runat="server" Text="Washing Utensils" Font-Size="Large" ID="ljm"></asp:Label>
             <div class="form-field">
             <asp:Label runat="server" ID="lbl_person" Text="Select People"></asp:Label>
                       <%--<input type="number" name="a1" max="20" min="4" id="Number1" runat="server" placeholder="---" value="0"/>--%>
             <asp:TextBox runat="server" TextMode="Number" ID="Number1" MaxLength="20" MinLength="4" placeholder="---" Text="0"  ></asp:TextBox>
              <%--</div>
               
            <div class="form-field">--%>
             <asp:Label runat="server" ID="lbl_room" Text=" Select Rooms (BHK)"></asp:Label>
                       <%--<input type="number" name="a1" max="10" min="2" id="Number2" runat="server" placeholder="---" value="0"/>--%>
             <asp:TextBox runat="server" TextMode="Number" ID="Number2" MaxLength="20" MinLength="4" placeholder="---" Text="0"  ></asp:TextBox>
              </div>
             
                 <div class="form-field"> 
             <asp:Button id="bts" runat="server" Text="Total" OnClick="bts_Click" />
              <asp:Button id="book" runat="server" Text="Book"  class="btn btn--primary" OnClick="book_Click"/>
                     <asp:Label runat="server" ID="lblqry"></asp:Label>
                    <%-- <asp:LinkButton runat="server" Text="Book" PostBackUrl="~/Try/bookingfinal.aspx"></asp:LinkButton>--%>
             </div> 
                 </div>
             </fieldset>
             

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
