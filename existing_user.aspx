<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="existing_user.aspx.cs" Inherits="template_test.existing_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
 <meta charset="utf-8">
    <title>Deterge.in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Css Files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/plugins.css" rel="stylesheet" type="text/css">
    <link href="css/homePopup.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet'
        type='text/css'>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">
        </div>
    </div>
    <!--//Preloader -->
    <!-- #page -->
    <div id="page">
        <!-- header section -->
        <div id="topping">
        </div>
        <section id="top">
            <header> 
            	<div class="container">                                   
                    <!-- logo -->
                    <div id="logo">
                        <a href="#topping">DETERGE <strong>SERVICES</strong></a>
         			</div>
                    <!-- menu -->
                    <nav class="navmenu">
                        <ul>
                             <li class="scrollable"><a href="Default.aspx">Home</a></li>  
                            <li class="scrollable"><a href="Default.aspx">Book your Laundry</a></li>
                           <!-- <li class="scrollable"><a href="#services">Our Rates</a></li> -->
                           <!-- <li><a href="#staff">Our Rates</a></li>-->
                           <!-- <li class="scrollable"><a href="#portfolio">Feedback</a></li>  -->    
                            <!--<li class="scrollable"><a href="feedback.aspx">Contact Us</a></li>-->
                            <li><a href="feedback.aspx">Contact Us</a></li>
                           <li><a href="feedback.aspx">Feedback</a></li>
                             <li><a href="sign_up.aspx">Sign-Up</a></li>

                        </ul>
                    </nav><!-- end menu --> 
                    <div class="clear"></div>
            	</div>
            </header>               
        </section>
        <!-- //end header section -->
        <!-- home content -->
        <section id="home">
            	
        	
        <!-- //end home content -->
        <!-- Tab Section -->
        <!-- // end tab section -->
        <!-- booking section -->
        
        <!-- // end booking section -->
        <!-- start content -->
        <!-- about content-->
        <section class="page_section" id="about">                     
            <!-- section content -->   
            <div class="container wow fadeInUp">            				
                <div class="about_block bg_gray mb30">                	              	
                    <div class="col_cont">                    	                     	
                        <div class="wrap_cont">                        	
                            <header class="head_section">                            	                         	
                            	<h2>Place Your Order:</h2>
                                <Deterges></Deterges>
                              <div class="separator left"></div>                              	
                            </header>
                            
                            <asp:Panel ID="Panel1" runat="server" Height="492px" style="text-align: center" Width="399px">
                                <br />
                                <asp:Label ID="Labelqty" runat="server" Font-Names="Arial Black" Text="Enter the total quantity of clothes"></asp:Label>
                                <br />
                                <asp:DropDownList ID="DropDownqtyclothes" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                </asp:DropDownList>
            <br />
                                <br />
                                <asp:Label ID="Labelpromo" runat="server" Font-Names="Arial Black" Text="Enter the promo code:(OPTIONAL)"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBoxpromo" runat="server"></asp:TextBox>
            <br />
                                <br />
                                <asp:Label ID="Labelpwd" runat="server" Font-Names="Arial Black" Text="Enter your password to confirm:"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBoxpwd" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButtonfgtpwd" runat="server" Font-Names="Arial" Font-Size="Small" Font-Underline="False"  OnClick="LinkButtonfgtpwd_Click">forgot password?</asp:LinkButton>
            <br />
            <asp:Button ID="Buttonconfirm_order" runat="server" class="shortcode_button" OnClick="Buttonconfirm_order_Click" Text="CONFIRM" />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Text="Enter the VERIFICATION CODE you received as the missed call(exclude '+' sign) Example-123456****" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Labelplus" runat="server" Font-Names="Arial Black" Text="+" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBoxmcallveri" runat="server" style="text-align: center" TextMode="Phone" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Labelname0" runat="server" Font-Names="Arial Black" Text="Create a password:" Visible="False"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBoxFpwd" runat="server" Visible="False" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Labelname1" runat="server" Font-Names="Arial Black" Text="Confirm password:" Visible="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxcFpwd" runat="server" Visible="False" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxFpwd" ControlToValidate="TextBoxcFpwd" ErrorMessage="Passwords is not Matching" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                <br />
            <asp:Button ID="Buttonforgotpassword" runat="server" class="shortcode_button" OnClick="Buttonforgotpassword_Click" Text="CONFIRM" Visible="False" />
                                <br />
                                </asp:Panel>
                        </div>
                    </div>                     
                    <div class="col_img"></div>	
                    <div class="clear"></div>
                </div>
            </div>                                	
			<!-- //section content --> 
        </section>

        <!-- //end about content-->
        <!-- //end start content -->
        
        <!-- services content -->
       
        <!-- //end services content-->
        <!-- team content -->
        <!-- //end team content -->
        <!-- portfolio content-->
        <!-- //end portfolio content-->
        <!-- pricing content-->
        
        <!-- //end pricing content-->
        
        <!-- contact content-->
        
        <!--footer-->
        <div class="footer">
            <!-- footer_bottom -->
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Ongoing Offers</h3>
                            </div>
                            <ul class="list-posts">
                                <li>
                                    <p>
                                        First wash free! Limited period offer. Conditions apply.</p>
                                    <deterges class="date">1st, Feb. 2016</deterges>
                                    <a href="#">By Admin</a> </li>
                                <li>
                                    <p>
                                        We value your opinion regarding our service and facilities.</p>
                                    <deterges class="date">1st, Feb. 2016</deterges>
                                    <a href="#">By Admin</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    TIMINGS</h3>
                            </div>
                            <div class="working_hours">
                                <ul>
                                    <li>
                                        <deterges><i class="fa fa-clock-o"></i>Ladies Hostel: </deterges>
                                        <deterges>
                                        04.00 - 06.00pm</Tour Traveln> </li>
                                    <li>
                                        <deterges><i class="fa fa-clock-o"></i>BH 5, 6 & 7: </deterges>
                                        <deterges>06.00 - 07.00pm</deterges>
                                    </li>
                                    <li>
                                        <deterges><i class="fa fa-clock-o"></i>BH 1 & 2: </deterges>
                                        <deterges>07.00 - 08.00</deterges>
                                    </li>
                                    <li>
                                        <deterges><i class="fa fa-clock-o"></i>BH 3 & 4: </deterges>
                                        <deterges>08.00 - 09.00</deterges>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Signup</h3>
                            </div>
                            <p>
                                Signup to get exciting offers.</p>
                             <div class="ns_block">
                                <input type="text" class="ns_input" placeholder="Email address" title="Email address">
                                <asp:Button ID="Button2" class="shortcode_button" runat="server" Text="Sign-Up" PostBackUrl="~/sign_up.aspx"/>
                            </div>
                            <div class="social">
                                <a href="#" class="soc-f">D</a> <a href="#" class="soc-t">E</a> <a href="#" class="soc-g">
                                    T</a> <a href="#" class="soc-n">E</a> <a href="#" class="soc-v">R G</a> <a href="#"
                                        class="soc-r">E</a> <a href="#" class="soc-i">.in</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    &copy; Copyright 2016. Deterge Services All Rights Reserved.
                </div>
            </div>
            <!-- //footer_bottom -->
        </div>
        <!--//footer-->
    </div>
    <!-- end #page -->
    <header class="fixed-menu"></header>
    <!-- javascript files-->
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/sorting.js"></script>
    <script src="js/homePopupLoad.js" type="text/javascript"></script>
    <script src="js/homePopup.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/current.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <!-- animation on scrolling-->
    <script>
        new WOW().init();
    </script>
    </form>
</body>
</html>

