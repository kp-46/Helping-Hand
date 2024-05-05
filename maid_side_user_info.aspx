<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maid_side_user_info.aspx.cs" Inherits="maid_side_user_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
    
   <%-- <div class="row large-22 "style="position:center">--%>
       
    <header class="s-header large-22 align-right">
        <div class="row large-22 ">

            
                <a href="index.aspx">
                    <img src="img/logo2.png" alt="Helping-Hand" height="100" width="100"  style=" margin-right: 4rem; position:relative; margin-top:2rem; margin-bottom:0rem; "  />
                </a>
            

            <nav class="s-header__nav" style=" font-size:medium; margin-right: 4rem;margin-left: 4rem; position: center; margin-top:2rem; margin-bottom:0rem; " >
              <ul>
                                 
              
                    <li style="background-color: hsla(182, 82%, 38%, 1);" ><a href="index.aspx">Home</a></li>
                   
                    <li><asp:linkbutton id="admin3" runat="server" postbackurl="~/maidsidedisplay.aspx" text="Orders"/></li>
                    <li><asp:Linkbutton ID="admin2" runat="server" PostBackUrl="~/maid_side_user_info.aspx" Text="Requests"/></li>
                   <%-- <li><asp:Linkbutton ID="admin1" runat="server" PostBackUrl="~/add_maid.aspx" Text="Add Maid"/></li>--%>
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

        <section class="s-portfolio"> 
               <div class="row section-head align-x-center"> <h2 class="align-x-center">User Details</h2></div>

        <section id="styles" class="s-styles" style="background-color:white;color:black;">
         
                  
              <div class="row h-add-bottom">

            <div class="column large-12">
                       <asp:Repeater ID="rpt1" runat="server">
        <HeaderTemplate>
           <div class="table-responsive">

                    <table>
                            <thead>
                            <tr>
                 <th>Client Name</th>
                <th>contact</th>
                <th>address</th>
                <th>Preferred Time</th>
                 <th>Selected Date</th>
                 <th>Services</th>
                 <th>Time Period</th>
                <th>Total</th>
                <th>People|Room</th>
                </tr> 
                            </thead>
         
                          
            
        </HeaderTemplate>
        
        <ItemTemplate>
               <tbody>
                 <tr>
                <td style="color:black"><%#Eval("u_name") %></td>
                <td style="color:black"><%#Eval("cont") %></td>
                <td style="color:black"><%#Eval("addre") %></td>
                <td style="color:black"><%#Eval("time") %></td>
                <td style="color:black"><%#Eval("u_date") %></td>
                <td style="color:black"><%#Eval("services") %></td>
                <td style="color:black"><%#Eval("time_period") %></td>
                <td style="color:black"><%#Eval("price") %></td>
                <td style="color:black"><%#Eval("ppl_count") %> | <%#Eval("room_count") %></td>
                
            </tr>
                 </tbody>
                    

                
         </ItemTemplate>

        <FooterTemplate>
                
            </table>
            </div>
        </FooterTemplate>
    </asp:Repeater>

                  </div>
               </div> 
     </section>          
   
    
</section>
   
        
   <%--</div>--%>
          <!-- footer
    ================================================== -->
    <footer class="s-footer">
        <div class="row">
            <div class="column large-12 medium-6 w-1000-stack s-footer__social-block">
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

       <%--</div> --%>
    </form>
    
</body>
</html> 