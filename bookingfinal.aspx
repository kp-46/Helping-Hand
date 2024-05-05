<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingfinal.aspx.cs"  Inherits="bookingfinal"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  



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
                   <section id="portfolio" class="s-portfolio target-section">

                <div class="row section-head">
                    <div class="column large-3 medium-12">
                        <h2>Booking Form</h2>
                        <p class="desc">Enter Your Details!</p>
                    </div>


            <fieldset>
                    <%-- <div class="form-field align-x-center">
                    <asp:Label ID="lblhead" Text="BOOKING FORM" runat="server" ForeColor="White" Font-Size="Larger"></asp:Label>
                         </div>--%>
                
                           <div class="column large-8 medium-12 align-x-right"> 
                            <div class="form-field align-x-right">
                                <asp:TextBox id="txtname" runat="server" Placeholder="Your Name" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="reg_name" runat="server" ErrorMessage="*Required" ControlToValidate="txtname" ForeColor="Red" Display="Static"/>
                            </div>

                            <div class="form-field">
                                <asp:TextBox id="txtemail" runat="server" Placeholder="Your Email" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="reg_mail" runat="server" ErrorMessage="*Required" ControlToValidate="txtemail" ForeColor="Red" Display="Static"/>
                            </div>

                            <div class="form-field">
                                <asp:TextBox id="txtcont" runat="server" Placeholder="Your Contact" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="reg_con" runat="server" ErrorMessage="*Required" ControlToValidate="txtcont" ForeColor="Red" Display="Static"/>
                            </div>
                                <div class="form-field">
                                <asp:TextBox id="txtadd" runat="server" Placeholder="Address" class="h-full-width h-remove-bottom"/>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="txtadd" ForeColor="Red" Display="Static"/>
                            </div>
                           
                                
                            <asp:Calendar ID="cal1" runat="server" OnSelectionChanged="cal1_SelectionChanged" OnVisibleMonthChanged="cal1_VisibleMonthChanged" OnDayRender="cal1_DayRender" BackColor="White" BorderStyle="None" CellPadding="9" DayNameFormat="Shortest" Font-Names="Roboto" Font-Size="12pt" ForeColor="Black"  Width="300px" >
                                <DayHeaderStyle BackColor="White" Font-Size="12pt" ForeColor="Black" VerticalAlign="Middle" HorizontalAlign="Center" />
                                <NextPrevStyle VerticalAlign="Middle" ForeColor="White" BackColor="Black"/>
                                
                                <OtherMonthDayStyle ForeColor="Black" />
                                <SelectedDayStyle BackColor="Black"  ForeColor="White" Font-Bold="true" />
                                <SelectorStyle BackColor="Black" />
                                <TitleStyle BackColor="White" ForeColor="BLack" Font-Bold="true"/>
                                <TodayDayStyle BackColor="White" ForeColor="Black" Font-Underline="true" Font-Bold="true" />
                                <WeekendDayStyle BackColor="Gray" />
                                </asp:Calendar>
                            <asp:Button ID="btn" runat="server"  Text="SELECT DATE FROM CALENDAR" OnClick="btn_Click" CausesValidation="false" />
                                
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                                <%-- <asp:RequiredFieldValidator id="Reqdate" runat="server" ErrorMessage="*Required" ControlToValidate="Label1" ForeColor="Red" Display="Static"/>--%>
                               <%-- <asp:RequiredFieldValidator id="Reqdate" runat="server" ErrorMessage="*Required" ControlToValidate="cal1" ForeColor="Red" Display="Static"/>--%>
                                
                                <div class="form-field">
                                <asp:DropDownList ID="ddl_time" runat="server">
                                    <asp:ListItem>Preferred Time</asp:ListItem>
                                    <asp:ListItem Value="Morning">Morning</asp:ListItem>
                                    <asp:ListItem Value="AfterNoon">AfterNoon</asp:ListItem>
                                    <asp:ListItem Value="Evening">Evening</asp:ListItem>
                                </asp:DropDownList>
                                    
                                </div>
                           
                                                      
                            <div class="column-services Item">
                                <asp:DropDownList ID="ddl_State" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddl_State_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddl_city" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddl_city_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddl_area" runat="server" AppendDataBoundItems="true" >
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_area" ForeColor="Red" Display="Static"/>
                            </div>
                        
                                <div>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="FileUpload1" ForeColor="Red" Display="Static"/>
                           </div>



                        <asp:Button ID="btnadd" runat="server" Text="CONFIRM" OnClick="btnadd_Click" class="btn btn--primary"/>
                           
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
