<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="template_test.Default" EnableEventValidation="false"  %>

<!DOCTYPE html>
<html>
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
                        <strong><br />A startup initiative by ITER students</strong>
           			</div>
                    <!-- menu -->
                    <nav class="navmenu">
                        <ul>
                            <li class="scrollable"><a href="#topping">Home</a></li>  
                            <li class="scrollable"><a href="#about">Book your Laundry</a></li>
                           <!-- <li class="scrollable"><a href="#services">Our Rates</a></li> -->
                            <li class="scrollable"><a href="#staff">Our Rates</a></li>
                           <!-- <li class="scrollable"><a href="#portfolio">Feedback</a></li>  -->    
                            <li class="scrollable"><a href="#contact">Contact Us</a></li>
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
            	
        	<!--Slider-->
            <div class="full_slider">
                <div id="fullwidth_slider" class="flexslider">                	
                    <ul class="slides">
                        <li> 
                        	<div class="slideshow-overlay"></div>                                    
                            <img src="images/slider/1.gif" alt="" class="slide_bg" />
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
                                    	
                                        <div class="title"></div>
                                        <br>
                                    </div>
                                </div>                              
                            </div>                        
                        </li>
                        <li>
                        	<div class="slideshow-overlay"></div>
                            <img src="images/slider/2.gif" alt="" class="slide_bg" />                            	
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
	                                    
                                        <div class="title"></div>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="slideshow-overlay"></div>
                            <img src="images/slider/3.gif" alt="" class="slide_bg" />                            	
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
                                      
                                        <div class="title"></div>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </li>                                                       
                    </ul>
                </div>
             </div>          
            <!--//Slider-->            
        </section>
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
                            	<h2>Book Your Laundry</h2>
                                <Deterges></Deterges>
                              <div class="separator left"></div>                              	
                            </header>
                            
                            <asp:Panel ID="Panel1" runat="server" Height="301px" Width="399px">
                                <asp:Label ID="Label1" runat="server" Text="Phone Number:" Font-Names="Arial Black"></asp:Label>
                                 <br />
                                <asp:TextBox ID="TextBoxph1" runat="server"  TextMode="Phone"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxph1" ErrorMessage="Enter a Valid Phone Number" ForeColor="#CC0000"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                 &nbsp;

                                 <br />
                                 <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" Text="Select a PickUp date:"></asp:Label>
                                 <br />
                                <asp:TextBox ID="TextBoxdop" runat="server" TextMode="Date">MM-dd-yyyy</asp:TextBox>
                                 <br />
                                 <asp:Button ID="Button1" class="shortcode_button" runat="server" Text="BOOK" OnClick="Button1_Click" />                            
                                <br />
                                <br />
                                <br />
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
        <section class="page_section">         
            <!-- section header -->
            <header class="head_section center_section">
                <div class="container">
                    <h1>How it works</h1>
                    <div class="separator"></div>
                    <p>Deterge Services is an online facility for laundry & dry cleaning. We provide fast, easy & low-cost laundry service.Our expert cleaners and master pressers ensure that your clothes come back looking fresh and beautiful every time.Your clothes will be delivered on time to your Hostel Gate. Now getting your laundry done is that simple.</p>
                </div><!-- end .container -->
</header>
            <!-- //section header -->
                      
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/mal.jpg">
                                </div>
                                <h3>Book</h3>
                                <div class="separator"></div>
                            	<p>Just book your laundry pickup using our website or app by choosing your pickup date. You’ll get an ETA of your laundry to get done & an auto generated invoice.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/goa.jpg">
                                </div>
                                <h3>Pickup</h3>
                                <div class="separator"></div>
                            	<p>We’ll pick up the laundry on the scheduled pickup date. The clothes will be checked with the data which are sent to us.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/ticket book.jpg">
                                </div>
                                <h3>Deliver</h3>
                                <div class="separator"></div>
                            	<p>Laundry will be delivered on or before the ETA. Customer will pay through cash & an invoice will be provided to them.</p>
                            </a>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end start content -->
        
        <!-- services content -->
       
        <!-- //end services content-->
        <!-- team content -->
        <!-- //end team content -->
        <!-- portfolio content-->
        <section class="page_section" id="portfolio">
            <!-- section header -->
            <header class="head_section center_section">
                <div class="container">
                    <h2>Our Sponsors</h2>
                    <div class="separator"></div>
                    <p>Our unique partnerships mean you always get the lowest prices around with great service.</p>
                </div><!-- end .container -->
</header>
            <!-- //section header --> 
            
            <!-- section content --> 
            <div class="portfolio-block">           
                <div class="container wow fadeInUp">
                  <!--  <ul class="portfolio-menu" id="filters">
                        <li class="active"><a data-filter="*">All</a></li>
                        <li><a data-filter=".fly">fly</a></li>
                        <li><a data-filter=".hotel">hotel</a></li>
                        <li><a data-filter=".air">air</a></li>
                        <li><a data-filter=".car">car</a></li>
                    </ul> -->
                    <div class="row portfolio-list image-grid">
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly air car">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Title Sponsor</h4>
                                        <div class="separator"></div>
                                        <p>bbsr</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 hotel air">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-2</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 air">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-3</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                      <!--  <div class="item col-md-4 col-sm-4 col-xs-12 car air">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-4</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 hotel">
                           <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-5</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly hotel">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-6</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 air hotel">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-7</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-8</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Sponsor-9</h4>
                                        <div class="separator"></div>
                                        <p>Address</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div> -->
                 <!--   <div class="app-item"><a class="shortcode_button add-item">Load More</a></div>  -->
                </div>                                                                    
			</div>
            <!-- //section content -->    
        </section>
        <!-- //end portfolio content-->
        <!-- pricing content-->
        <section class="page_section" id="staff">    
            <!-- section content -->
            <div class="container wow fadeInUp">
            	<div class="pricing_block bg_gray">
                    <!-- section header -->
                    <header class="head_section center_section">
                        <h2>Our Rates</h2>
                        <div class="separator"></div>
                        <p>Prices include both washing and ironing.</p>
                    </header>
                    <!-- //section header --> 
                    <div class="price-item">
                        <div class="type"><Tour Traveln>Men's</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>WASH + IRON</Tour Traveln></div>
                        <div class="cont">
                            <ul>
                                <li>Shirt/Tee - ₹10</li>
                                <li>Half Pant/Bermuda - ₹10</li>
                                <li>Pant/Jeans - ₹12</li>
                                <li>Kurta - ₹12</li>
                                <li>Sweater - ₹25</li>
                               <!-- <li>Pullover - ₹30</li> -->
                                <li></li>     
                            </ul>
                        </div>
                        
                    </div>
                    <div class="price-item optimal">
                        <div class="type"><Tour Traveln>Women's</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>WASH + IRON</Tour Traveln></div>
                        <div class="cont">
                            <ul>
                                <li>Top/Tee - ₹10</li>
                                <li>Dupatta - ₹10</li>
                                <li>Salwar - ₹10</li>
                                <li>Slack - ₹10</li>
                                <li>Scarf - ₹10</li>
                                <li>Jeans/Pants - ₹12</li>
                                <li>Kurti/Kameez - ₹12</li>
                                <li>Shawl - ₹25</li>
                                <li>Saree - ₹49*</li>     
                            </ul>
                        </div>
                        
                    </div>
                    <div class="price-item">
                        <div class="type"><Tour Traveln>Household</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>WASH + IRON</Tour Traveln></div>
                        <div class="cont">
                            <ul>
                                <li>Handkerchiefs - ₹5</li>
                                <li>Pillow Cover - ₹8</li>
                                <li>Towel - ₹12</li>
                                <li>Single Bedsheet - ₹15</li>
                                <li>Double Bedsheet - ₹18</li>
                                <li></li>                                
                            </ul>
                        </div>
                      <!--  <a href="#" class="shortcode_button">Buy Now</a>-->
                    </div>
                </div>
            </div>
			<!-- //section content --> 
        </section>
        <!-- //end pricing content-->
        
        <!-- contact content-->
        <section class="page_section" id="contact">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row">
                	<div class="col-md-3">
                    	<div class="info-block bg_colored block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                              <h2>WRITE US</h2>
                                <div class="separator left"></div>
                            </header>
                            <p>We value your opinion regarding our service & delivery. Please feel free to contact us with your thoughts.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                    	<div class="contact_form block">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div id="note"></div>
                                </div>   
                            </div> 
                            <div id="fields"> 
                                <form id="ajax-contact-form" class="row" action="#">                        
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="name" placeholder="Name" title="Name">
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="email" placeholder="Email" title="Email">
                                    </div>
                                    <div class="clear"></div>
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="phone" placeholder="Phone" title="Phone">
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="subject" placeholder="Subject" title="Subject">
                                    </div>
                                    <div class="clear"></div>
                                    <div class="col-md-12">
                                        <textarea class="inp" rows="4" name="message" placeholder="Message" title="Message"></textarea>
                                    </div>
                                    <div class="col-md-12"><asp:Button ID="Button3" class="shortcode_button" runat="server" Text="Send Message" PostBackUrl="~/feedback.aspx"/></div>
                                </form> 
                            </div> 
                        </div>                
                    </div>
                    <div class="col-md-3">
                    	<div class="info-block bg_black block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                              <h2>CONTACT</h2>
                                <Tour Traveln>DETAILS</Tour Traveln>
                              <div class="separator left"></div>
                            </header>
                            <p>Address: Jagamara </p>
                            <p>Bhubaneswar </p>
                            <p>Odisha</p>
                            <p>Phone: +91-9124127762</p>
                            <p></p>
                            <p>Email: detergeservices@gmail.com </p>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end contact content-->
        <!-- map section-->
        <div class="map-canvas">
        </div>
        <!-- /end map section -->
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

