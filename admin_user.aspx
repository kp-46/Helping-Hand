<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_user.aspx.cs" Inherits="admin_user" %>

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
    
    <header class="s-header">
        <div class="row">

            
                <a href="index.aspx">
                    <img src="img/logo2.png" alt="Helping-Hand" height="100" width="100"  style=" margin-right: 4rem; position:relative; margin-top:2rem; margin-bottom:0rem; "  />
                </a>
            

            <nav class="s-header__nav" style=" font-size:medium; margin-right: 4rem; position: inherit; margin-top:2rem; margin-bottom:0rem; " >
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


        <section id="t&c" class="s-about target-section">
            <div class="row section-head align-x-center"> <h2 class="align-x-center">User Details</h2></div>
         <div class="column large-8 medium-12 align-x-center"> 
           
            
            <%--<asp:GridView ID="grd1" runat="server"  ForeColor="White" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  DataSourceID="SqlDataSource1">--%>
                <asp:GridView ID="grd1"  runat="server" BorderColor="White" BackColor="White"  AutoGenerateColumns="false"   CellPadding="0" BorderStyle="None" ForeColor="Black" RowStyle-VerticalAlign="Middle" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" AlternatingRowStyle-VerticalAlign="Middle" EditRowStyle-VerticalAlign="Middle" >
                
                  <Columns>
                      <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" HeaderStyle-ForeColor="#058e96"/>
                      <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" HeaderStyle-ForeColor="#058e96"/>
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" HeaderStyle-ForeColor="#058e96"/>
                      <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" HeaderStyle-ForeColor="#058e96"/>
                      <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" HeaderStyle-ForeColor="#058e96"/>
                  </Columns>
                  
              </asp:GridView>
        </div>
     </section>
  </div>

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