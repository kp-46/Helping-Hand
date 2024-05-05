<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

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
            <div class="row section-head align-x-center"> <h2 class="align-x-center">Maid Details</h2></div>
         <div class="column large-12 medium-12 align-x-center"> 
           
            
         

             <%--   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  OnRowCancelingEdit="GridView1_RowCancelingEdit"   
  
OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting1">  
            <Columns>  
                <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                
                <asp:TemplateField HeaderText="Id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Id" runat="server" Text='<%#Eval("id") %>'></asp:Label>  
                    </ItemTemplate>
                 </asp:TemplateField>
                
                    
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("maid_name") %>'></asp:Label>  
                    </ItemTemplate>
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("maid_name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Area">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_City" runat="server" Text='<%#Eval("maid_area") %>'></asp:Label>  
                    </ItemTemplate>
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_City" runat="server" Text='<%#Eval("maid_area") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Contact">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Conatct" runat="server" Text='<%#Eval("maid_contact") %>'></asp:Label>  
                    </ItemTemplate>
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Contact" runat="server" Text='<%#Eval("maid_contact") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Area ID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_aid" runat="server" Text='<%#Eval("a_id") %>'></asp:Label>  
                    </ItemTemplate>
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_aid" runat="server" Text='<%#Eval("a_id") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
       <HeaderStyle BackColor="#663300" ForeColor="#ffffff"/>  
            <RowStyle BackColor="#e7ceb6"/>  
        </asp:GridView>  --%>



                <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false" CellPadding="0" BorderStyle="None" ForeColor="black" BorderColor="White" OnRowCancelingEdit="GridView1_RowCancelingEdit"   
  
OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting1" RowStyle-VerticalAlign="Middle" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" AlternatingRowStyle-VerticalAlign="Middle" EditRowStyle-VerticalAlign="Middle">
                    <Columns >
            <asp:TemplateField HeaderText="Sr.No"  HeaderStyle-Width="100" HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate >
                   <asp:Label ID="lbl_Id" runat="server" Text='<%#Eval("id") %>'></asp:Label>  
                </ItemTemplate>
            </asp:TemplateField >
            <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px" HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate>
                  <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("maid_name") %>'></asp:Label>  
                </ItemTemplate>
                <EditItemTemplate>
                     <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("maid_name") %>'></asp:TextBox>  
                </EditItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px" HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lbl_City" runat="server" Text='<%#Eval("maid_area") %>'></asp:Label>  
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txt_City" runat="server" Text='<%#Eval("maid_area") %>'></asp:TextBox>  
                </EditItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px"  HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate>
                  <asp:Label ID="lbl_Conatct" runat="server" Text='<%#Eval("maid_contact") %>'></asp:Label>  
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="txt_Contact" runat="server" Text='<%#Eval("maid_contact") %>'></asp:TextBox>  
                </EditItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Area ID" HeaderStyle-Width="200px"  HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate>
                        <asp:Label ID="lbl_aid" runat="server" Text='<%#Eval("a_id") %>'></asp:Label>  
                    </ItemTemplate>
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_aid" runat="server" Text='<%#Eval("a_id") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

            <asp:TemplateField HeaderText="Image" HeaderStyle-Width="400px"  HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("maid_img") %>' Height="120px" Width="300px" />
                </ItemTemplate>
                <%--<EditItemTemplate>
                    <asp:Image ID="img_user" runat="server" ImageUrl='<%# Eval("maid_img") %>' Height="120px" Width="200px" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>--%>
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image" HeaderStyle-Width="400px"  HeaderStyle-ForeColor="black" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("maid_vacc") %>' Height="120px" Width="300px" />
                </ItemTemplate>
               <%-- <EditItemTemplate>
                    <asp:Image ID="img_user1" runat="server" ImageUrl='<%# Eval("maid_vacc") %>' Height="120px" Width="200px" />
                    <br />
                    <asp:FileUpload ID="Fld_vacc" runat="server" />
                </EditItemTemplate>--%>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="150px">
                <ItemTemplate>
                    <asp:LinkButton ID="btn_Edit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" ></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="btn_Update"  runat="server" CommandName="Update">Update</asp:LinkButton>
                    <asp:LinkButton ID="btn_Cancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
            </asp:TemplateField>
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