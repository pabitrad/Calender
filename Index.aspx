﻿<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@ Page Language="C#"%>
<%@ Import Namespace="System.Web.Optimization" %>
<html class="no-js">
 <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kwasant</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <% Response.Write(Styles.Render("~/bundles/css/bootstrap2.3").ToHtmlString()); %>
    <% Response.Write(Styles.Render("~/bundles/css/colorbox").ToHtmlString()); %>
    <% Response.Write(Styles.Render("~/bundles/css/frontpage").ToHtmlString()); %>
    <% Response.Write(Styles.Render("~/bundles/css/fontawesome").ToHtmlString()); %>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,300,600,400italic&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="Content/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <!--[if lt IE 7]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->


    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand goTop" href="index.aspx"><img class="floating" src="Content/img/perfect-krawsant.png"> Kwasant</a>
                <!-- <img src="img/logo.png"></a> -->
                <br />
                
                <!-- <a class="brand goTop"  style="background-image: url(Content/img/logo.png);"></a> -->
                <div class="nav-collapse">
                    <ul class="nav pull-right">
                        <li data-section="1"><a href="#services">How it Works</a></li>
                        <li data-section="2"><a href="#price-bg">FAQ</a></li>
                        <!-- 	<li data-section="3"><a href="#">About Us</a></li> -->
                        <li><a href="/Account/Login">SignUp/Login</a></li>
                        <!-- 	<li data-section="3"><a href="#">About Us</a></li> -->
                        <li data-section="4"><a href="#contacts">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="welcome" class="parallax" style="background-image: url(Content/img/background-test9.jpg);">
        <div id="logotext" class="text">
            <h1>Kwasant</h1>
            <!-- <div class="love text-center" style="background-image: url(Content/img/logo.png);"></div> -->
            <p>We schedule your meetings for you</p>
        </div>
    </div>

    <section id="about" class="row text-block" data-section="1">
        <div class="features dark-bg">
            <div class="container">
                <div class="row-fluid">
                    <h2 class="text-center"><b>Schedule a Meeting in One Step</h2></b>
                    <%--<article class="span4">
                        <i class=
                    "icon-resize-full"></i>--%>
   

                    <img class="pull-center" src="Content/img/from_this_to_this.png" />
                </div>
                
            </div>
        </div>
        <div class="light-bg">
            <div class="container">
                <h2><i class="icon-cogs"></i> How it Works </h2>
                <div class="section clearfix">
                    <strong>1. Send one of your emails to Kwa@sant.com</strong>

                    <p></p>

                    <strong>
                        2. One of our Bookers will read the thread and build a meeting invitation
                    </strong>  <p></p>
                    <strong>
                        3. The meeting invitation gets sent back to you and your attendees
                    </strong><p></p>
                    <strong>4. Add it to your calendar with a single click</strong>
                    <p></p>
                    <p></p>
                    <p></p>
                    <img class="pull-center"  src="Content/img/example_using_kwasant_email.png" />
                    <br />
                    <br />
                    <br />
                    <!-- this is a section that breaks up the website -->
                    <div id="services-bg" class="parallax" style="background-image: url(Content/img/homepage89.png);">
                        <br />
                        <br />
                        <div class="#fff-bg">
                            <div class="text">
                                <blockquote>
                                    <h2>Kwasant </h2>

                                    <small> It just takes one step..</small>
                                </blockquote>
                            </div>
                            <a href="#" data-section="2" class="toSection"><i class="icon-double-angle-down"></i></a>
                        </div>
                    </div>

                    <h2>Details</h2>
                    <p></p>
                    <p>We take the emails you provide to us and put them in front of of our human Booking Agents, who do what a personal assistant would do: they read the message, extract the key elements about the meeting, and enter them into a calendar.<p>
                        This generates a Meeting Invitation that we email back to you using the open “ICS” standard. If you're using common calendaring software like Google Calendar, Apple iCal, and Microsoft Outlook, these emails show up in your inbox and allow you to add them to your calendar with one click.

                        Think of us as your personal assistant. If we can read your email and figure out the meeting time, we’ll do it. You don’t have to give the information to us in any special format.
                        If the information you send us is too ambiguous, we’ll send you back a request for clarification. We delete all email we receive 7 days after the event is scheduled.
                    </p>
                </div>
                <div class="row-fluid section">

                    <div class="span12 text-center">
                        <!-- <h3 class="with-border">Watch who we are</h3> -->
                        
                        <img src="Content/img/How_it_works_diagram.png" />
                        <!-- <div class="videoWrapper">
                            <iframe src="http://player.vimeo.com/video/20596477?color=39ae77" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                        </div> -->
                    </div>
                </div>



                <!-- this is a section that breaks up the website -->
                <div id="services-bg" class="parallax" style="background-image: url(Content/img/homepagesecond.jpg);">
                    <br />
                    <br />
                    <div class="#fff-bg">
                        <div class="text">
                            <blockquote>
                                <h2>kwaSant - The Next Thing You Can't Live Without</h2>

                                <small> We use your email to build your calendar.</small>
                            </blockquote>
                        </div>
                        <a href="#" data-section="2" class="toSection"><i class="icon-double-angle-down"></i></a>
                    </div>
                </div>

                <!-- this is the faq section -->
                <section id="faq" class="text-block" data-section="2">
                    <h1 class="text-center">FAQ</h1>
                    <div class="row span-12 text-center">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            Just what problem are you solving here?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        The internet offers fantastic services these days, but it’s still an annoying task to convert conversations into useful meeting requests. Some people have personal assistants to help with this, but most of us don’t. Now, you can get personal assistant help when you need it.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                            How do you make money?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Someday, we’re probably going to charge a small monthly fee for booking services. But everyone using BookIt now will get at least one free year of service.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                            What email addresses do you use?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        We send your meeting request right back to the address you sent your information from. However, you’ll soon be able to specify which address to use.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                            What else do you do?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        We're working on adding a bunch of additional ways you can save time by tapping into our web assistants.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                                            Can you also send a meeting invite to the other attendees?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes, they'll get one too.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                                            What if I don't give you enough detail about the meeting? Do you just guess?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSix" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        In general, we'll book the information we're sure about, and if necessary, email you for clarification.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
                                            Do you have a mascot?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSeven" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes. Feast your eyes on Kwasant the Kat
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <p></p>

               
            </div>
            <div class="row-fluid section">
                <!-- <div class="span6">
                    <h3 class="with-border">Our Skills</h3>
                    <div class="progress-block">
                        <div class="progress">
                            <div class="bar" style="width: 80%;"></div>
                            <a data-section="3" class="progress-name toSection" href="#">Design</a>
                            <span class="value">80%</span>
                        </div>
                        <div class="progress">
                            <div class="bar " style="width: 75%;"></div>
                            <a data-section="3" class="progress-name toSection" href="#">Development</a>
                            <span class="value">75%</span>
                        </div>
                        <div class="progress">
                            <div class="bar" style="width: 40%;"></div>
                            <a data-section="3" class="progress-name toSection" href="#">Branding</a>
                            <span class="value">40%</span>
                        </div>
                        <div class="progress">
                            <div class="bar" style="width: 60%;"></div>
                            <a data-section="3" class="progress-name toSection" href="#">Usability</a>
                            <span class="value">60%</span>
                        </div>
                        <div class="progress">
                            <div class="bar" style="width: 100%;"></div>
                            <a data-section="3" class="progress-name toSection" href="#">Concepts</a>
                            <span class="value">100%</span>
                        </div>
                    </div>
                </div> -->
               
            </div>





            <!-- meet the team

                                <div class="section">
                                    <h3 class="with-border">Meet our Team</h3>
                                    <ul class="thumbnails section">
                                        <div class="row">
                                            <li class="span6">
                                                <div class="thumbnail">
                                                    <div class="img-wrap">
                                                        <div class="#fff-bg">
                                                            <div class="hover-block">
                                                                <h4>Have a question? Write!</h4>
                                                                <ul class="link-block">
                                                                    <li><a href="#"><i class="icon-linkedin-sign"></i></a></li>
                                                                    <li><a href="#"><i class="icon-twitter-sign"></i></a></li>
                                                                    <li><a href="#"><i class="icon-facebook-sign"></i></a></li>
                                                                    <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <img src="Content/img/Management/alexhead.png" />

                                                    </div>
                                                    <h3 class="with-border">Alex Edelstein<small class="color">- chief technology officer</small></h3>
                                                    <p>Founder and CEO</p>
                                                </div>
                                            </li>
                                            <li class="span6">
                                                <div class="thumbnail">
                                                    <div class="img-wrap">
                                                        <div class="#fff-bg">
                                                            <div class="hover-block">
                                                                <h4>Have a question? Write!</h4>
                                                                <ul class="link-block">
                                                                    <li><a href="#"><i class="icon-linkedin-sign"></i></a></li>
                                                                    <li><a href="#"><i class="icon-twitter-sign"></i></a></li>
                                                                    <li><a href="#"><i class="icon-facebook-sign"></i></a></li>
                                                                    <li><a href="#"><i class="icon-google-plus-sign"></i></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <img src="Content/img/team2.jpg" alt=""/>
                                                    </div>
                                                    <h3 class="with-border">Katharine VanderDrift<small class="color">- talented designer</small></h3>
                                                    <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                                </div>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                    </section>
                    -->
            <!-- <div id="services-bg" class="parallax" style="background-image: url(Content/img/bg4.jpg);">
                <div class="#fff-bg">
                    <div class="text">
                        <blockquote>
                            <h2>Design is powerful</h2>
                            "Design is not just what it looks like and feels like. Design is how it works"
                            <small class="color">Steve Jobs</small>
                        </blockquote>
                    </div>
                    <a href="#" data-section="2" class="toSection"><i class="icon-double-angle-down"></i></a>
                </div>
            </div>

            <section id="services" class="text-block" data-section="2">
                <div class="light-bg">
                    <div class="container">
                        <h2><i class="icon-ok"></i> Our services <small class="color">/ What we can do</small></h2>
                        <p>Lorem ipsum dolor sit amet, nam idque tantas vidisse ex, per ea sint explicari theophrastus, dicat tantas copiosae eam id. Cum maiestatis necessitatibus ad, nam ut mutat quaestio. Id primis dolores eum. Munere sententiae vis ea. Pro dicta insolens eu, duo veniam eruditi oportere an, eum molestie salutandi in. Vix in elit legere appetere, pri in erant nonumes.</p>
                        <p>Nec no congue soluta causae. Erant volumus epicuri eum at, melius graecis reprehendunt mel id. Cum cu novum facilisis, has te dicta aeque. Falli causae has an, cu eius nonumy per. Diam reformidans est an, omnis epicurei ex nam. Vis latine nominati ad. In putant contentiones eum, duo ad ferri ceteros. An eos primis rationibus, quod moderatius no eos. Te causae accusata cum. In vix explicari accommodare.</p>
                        <div class="row-fluid second-service">
                            <article class="span4">
                                <div class="block-icon"><i class="icon-picture"></i></div>
                                <h3 class="with-border">Design</h3>
                                <p>Nulla vel augue egestas diam viverra pellentesque in at nulla. Ut urna orci, condimentum nec magna et, ornare porttitor ipsum. Etiam fringilla vitae nibh eu porta. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            </article>
                            <article class="span4">
                                <div class="block-icon"><i class="icon-desktop"></i></div>
                                <h3 class="with-border">Development</h3>
                                <p>Phasellus rhoncus ullamcorper neque et ultricies. Duis mattis eleifend magna ac lobortis. Mauris vel purus id elit fringilla blandit ut aliquam velit. Pellentesque accumsan commodo turpis eu tincidunt.  </p>
                            </article>
                            <article class="span4">
                                <div class="block-icon"><i class=" icon-cog"></i></div>
                                <h3 class="with-border">Support</h3>
                                <p>Suspendisse non aliquet justo, vitae pretium leo. Nulla ultrices lacinia diam. Fusce posuere, tellus in scelerisque adipiscing, purus lectus blandit urna, vel congue nunc augue convallis lectus.  </p>
                            </article>
                        </div>
                    </div>
                </div>
                <div class="dark-bg">
                    <div class="container">

                        <div class="services-block section">
                            <div class="row-fluid">
                                <article class="span4">
                                    <div class="icon-service">
                                        <i class="icon-resize-full"></i>
                                    </div>
                                    <div class="item-desc">
                                        <h3 class="with-border">Full Responsive</h3>
                                        <p>Eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam. </p>
                                    </div>
                                </article>
                                <article class="span4">
                                    <div class="icon-service">
                                        <i class="icon-magic"></i>
                                    </div>
                                    <div class="item-desc">
                                        <h3 class="with-border">Parallax Effect</h3>
                                        <p>Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam. </p>
                                    </div>
                                </article>
                                <article class="span4">
                                    <div class="icon-service">
                                        <i class="icon-thumbs-up"></i>
                                    </div>
                                    <div class="item-desc">
                                        <h3 class="with-border">Modern Design</h3>
                                        <p>Donec in velit vel ipsum auctor pulvinar. Vesti bulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod auctor pulvinar.</p>
                                    </div>
                                </article>
                            </div>
                            <div class="row-fluid">
                                <article class="span4">
                                    <div class="icon-service">
                                        <i class="icon-cogs"></i>
                                    </div>
                                    <div class="item-desc">
                                        <h3 class="with-border">Easy Customizable</h3>
                                        <p>Donec in velit vel ipsum auctor pulvinar. Vesti bulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod auctor pulvinar.</p>
                                    </div>
                                </article>
                                <article class="span4">
                                    <div class="icon-service">
                                        <i class="icon-code"></i>
                                    </div>
                                    <div class="item-desc">
                                        <h3 class="with-border">HTML5 & CSS3</h3>
                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora. </p>
                                    </div>
                                </article>
                                <article class="span4">
                                    <div class="icon-service">
                                        <i class="icon-double-angle-down"></i>
                                    </div>
                                    <div class="item-desc">
                                        <h3 class="with-border">Smooth scrolling </h3>
                                        <p>Donec in velit vel ipsum auctor pulvinar. Vesti bulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod auctor pulvinar.</p>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div id="works-bg" class="parallax" style="background-image: url(Content/img/image_1.jpg);">
                <div class="#fff-bg">
                    <div class="text">
                        <h2>
                            <i class="icon-star hide"></i><i class="icon-star hide"></i><i class="icon-star"></i>
                            Featured project
                            <i class="icon-star hide"></i><i class="icon-star hide"></i><i class="icon-star"></i>
                        </h2>
                    </div>
                    <a href="#" data-section="3" class="toSection"><i class="icon-double-angle-down"></i></a>
                    <div class="container img-container">
                        <div class="site-screen img1">
                            <div class="img-head"></div>
                            <img alt="" src="Content/img/screen.jpg">
                        </div>
                        <div class="site-screen img2">
                            <div class="img-head"></div>
                            <img alt="" src="Content/img/screen.jpg">
                        </div>
                        <div class="site-screen img3">
                            <div class="img-head"></div>
                            <img alt="" src="Content/img/screen.jpg">
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- 	<section id="works" class="text-block" data-section="3">

                    <div class="light-bg">
                        <div class="container">
                            <h2><i class="icon-picture"></i> Portfolio <small class="color">/ our works</small></h2>
                            <ul class="thumbnails">
                                <li class="span6 big-preview">
                                    <div class="thumbnail">
                                        <div class="img-wrap">
                                            <a href="Content/img/bg4.jpg" class="colorbox">
                                                <div class="#fff-bg">
                                                    <i class="icon-zoom-in"></i>
                                                </div>
                                                <img src="Content/img/bg4.jpg" alt="" rel="gal"/>
                                            </a>
                                        </div>
                                        <h3 class="with-border">The latest project</h3>
                                        <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis. Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora. Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                    </div>
                                </li>
                                <div class="near-big">
                                    <div class="thumbnail-block clearfix">
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <div class="img-wrap">
                                                    <a href="Content/img/image_3.jpg" class="colorbox">
                                                        <div class="#fff-bg">
                                                            <i class="icon-zoom-in"></i>
                                                        </div>
                                                        <img src="Content/img/image_3.jpg" alt="" rel="gal"/>
                                                    </a>
                                                </div>
                                                <h3 class="with-border"><a href="#">Summer day <i class="icon-external-link"></i></a></h3>
                                                <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <div class="img-wrap">
                                                    <a href="Content/img/bg3.jpg" class="colorbox">
                                                        <div class="#fff-bg">
                                                            <i class="icon-zoom-in"></i>
                                                        </div>
                                                        <img src="Content/img/bg3.jpg" alt="" rel="gal"/>
                                                    </a>
                                                </div>
                                                <h3 class="with-border"><a href="#">External example <i class="icon-external-link"></i></a></h3>
                                                <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="thumbnail-block clearfix">
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <div class="img-wrap">
                                                    <a href="Content/img/bg2.jpg" class="colorbox">
                                                        <div class="#fff-bg">
                                                            <i class="icon-zoom-in"></i>
                                                        </div>
                                                        <img src="Content/img/bg2.jpg" alt="" rel="gal"/>
                                                    </a>
                                                </div>
                                                <h3 class="with-border"><a href="#">Good morning <i class="icon-external-link"></i></a></h3>
                                                <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Consectetur sed congue vel odio. </p>
                                            </div>
                                        </li>
                                        <li class="span3" >
                                            <div class="thumbnail">
                                                <div class="img-wrap">
                                                    <a href="Content/img/image_1.jpg" class="colorbox">
                                                        <div class="#fff-bg">
                                                            <i class="icon-zoom-in"></i>
                                                        </div>
                                                        <img src="Content/img/image_1.jpg" alt="" rel="gal"/>
                                                    </a>
                                                </div>
                                                <h3 class="with-border">Work place</h3>
                                                <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                            </div>
                                        </li>
                                    </div>
                                </div>
                                <div class="row">
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/image_2.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/image_2.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border"><a href="#">Summer day <i class="icon-external-link"></i></a></h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/image_4.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/image_4.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border"><a href="#">Work place <i class="icon-external-link"></i></a></h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/bg3.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/bg3.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border"><a href="#">Good morning <i class="icon-external-link"></i></a></h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis. Ut vel eleifend nisi. </p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/image_5.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/image_5.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border"><a href="#">Work place <i class="icon-external-link"></i></a></h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="row">
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/image_3.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/image_3.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border">Summer day</h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis. Vestibulum posuere eget ipsum sit amet suscipit. </p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/bg4.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/bg4.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border">Work place</h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/bg1.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/bg1.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border">Good morning</h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis. Praesent vehicula et elit gravida. </p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="Content/img/image_6.jpg" class="colorbox">
                                                    <div class="#fff-bg">
                                                        <i class="icon-zoom-in"></i>
                                                    </div>
                                                    <img src="Content/img/image_6.jpg" alt="" rel="gal"/>
                                                </a>
                                            </div>
                                            <h3 class="with-border"><a href="#">Work place <i class="icon-external-link"></i></a></h3>
                                            <p>Cras metus elit, consectetur sed congue vel, sollicitudin eget odio. Cras lacinia laoreet libero et mattis.</p>
                                        </div>
                                    </li>
                                </div>
                            </ul>
                        </div>
                    </div>
                </section>

                <div id="clients-bg" class="parallax" style="background-image: url(Content/img/bg8.jpg);">
                    <div class="#fff-bg">
                        <div class="text">
                            <blockquote>
                                <h2>Apply to everything</h2>
                                "If you know how to use a pencil to draw, you could draw anything. Now apply that to everything in life"
                                <small class="color">Justin Durban</small>
                            </blockquote>
                        </div>
                        <a href="#" data-section="4" class="toSection"><i class="icon-double-angle-down"></i></a>
                    </div>
                </div>

                <section id="clients" class="text-block" data-section="4">
                    <div class="light-bg">
                        <div class="container">
                            <h2><i class="icon-comments"></i> Clients <small class="color">/ Testimonials</small></h2>
                            <div class="testimonials-block section">
                                <div class="row-fluid">
                                    <article class="span4">
                                        <blockquote>"Lorem ipsum dolor sit amet, nam idque tantas vidisse ex, per ea sint explicari theophrastus, dicat tantas copiosae eam id. Cum maiestatis necessitatibus ad, nam ut mutat quaestio. Id primis dolores eum. Munere sententiae vis ea. Pro dicta insolens eu, duo veniam eruditi oportere an, eum molestie salutandi in. Vix in elit legere appetere, pri in erant nonumes."</blockquote>
                                        <b class="caret"></b>
                                        <p class="author"><i class="icon-user"></i> Mani Coop, <span>Google</span></p>
                                    </article>
                                    <article class="span4">
                                        <blockquote>"Dicat tantas copiosae eam id. Cum maiestatis necessitatibus ad, nam ut mutat quaestio. Id primis dolores eum. Munere sententiae vis ea. Pro dicta insolens eu, duo veniam eruditi oportere an, eum molestie salutandi in. Vix in elit legere appetere, pri in erant nonumes."</blockquote>
                                        <b class="caret"></b>
                                        <p class="author"><i class="icon-user"></i> Sebastian Rob, <span>Sony</span></p>
                                    </article>
                                    <article class="span4">
                                        <blockquote>"Theophrastus, dicat tantas copiosae eam id. Cum maiestatis necessitatibus ad, nam ut mutat quaestio. Id primis dolores eum. Munere sententiae vis ea. Pro dicta insolens eu, duo veniam eruditi oportere an, eum molestie salutandi in. Vix in elit legere appetere, pri in erant nonumes."</blockquote>
                                        <b class="caret"></b>
                                        <p class="author"><i class="icon-user"></i> Kate Saliman, <span>Company name</span></p>
                                    </article>
                                </div>
                            </div>
                            <div class="section">
                                <h3 class="with-border">Some of our clients</h3>
                                <div class="clients-block">
                                    <div class="row-fluid">
                                        <article class="span2">
                                            <img src="Content/img/client-1.png" alt="">
                                        </article>
                                        <article class="span2">
                                            <img src="Content/img/client-2.png" alt="">
                                        </article>
                                        <article class="span2">
                                            <img src="Content/img/client-3.png" alt="">
                                        </article>
                                        <article class="span2">
                                            <img src="Content/img/client-4.png" alt="">
                                        </article>
                                        <article class="span2">
                                            <img src="Content/img/client-5.png" alt="">
                                        </article>
                                        <article class="span2">
                                            <img src="Content/img/client-6.png" alt="">
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <div id="blog-bg" class="parallax" style="background-image: url(Content/img/bg7.jpg)">
                    <div class="#fff-bg">
                        <div class="text">
                            <blockquote>
                                <h2>You can</h2>
                                "If you can dream it, you can do it."
                                <small class="color">Walt Disney</small>
                            </blockquote>
                        </div>
                        <a href="#" data-section="5" class="toSection"><i class="icon-double-angle-down"></i></a>
                    </div>
                </div>

                <section id="blog" class="text-block" data-section="5">
                    <div class="light-bg">
                        <div class="container">
                            <h2><i class="icon-pencil"></i> Blog <small class="color">/ write something</small></h2>
                            <ul class="thumbnails">
                                <div class="row">
                                    <li class="span4">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="#"><img src="Content/img/image_1.jpg" alt=""/></a>
                                            </div>
                                            <h3 class="with-border">Lorem ipsum dolor sit amet</h3>
                                            <div class="info-panel clearfix">
                                                <span class="pull-left"><time datetime=""><i class="icon-calendar "></i> Sep 19, 2013</time></span>
                                                <span class="pull-right"><i class="icon-user"></i> By Rick </span>
                                            </div>
                                            <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                            <a class="btn pull-right" href="#">Read more</a>
                                        </div>
                                    </li>
                                    <li class="span4">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="#"><img src="Content/img/image_2.jpg" alt=""/></a>
                                            </div>
                                            <h3 class="with-border">Cum maiestatis necessitatibus ad</h3>
                                            <div class="info-panel clearfix">
                                                <span class="pull-left"><time datetime=""><i class="icon-calendar "></i> Sep 19, 2013</time></span>
                                                <span class="pull-right"><i class="icon-user"></i> By Rick </span>
                                            </div>
                                            <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                            <a class="btn pull-right" href="#">Read more</a>
                                        </div>
                                    </li>
                                    <li class="span4">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="#"><img src="Content/img/team3.jpg" alt=""/></a>
                                            </div>
                                            <h3 class="with-border">Dicat tantas copiosae eam id</h3>
                                            <div class="info-panel clearfix">
                                                <span class="pull-left"><time datetime=""><i class="icon-calendar "></i> Sep 19, 2013</time></span>
                                                <span class="pull-right"><i class="icon-user"></i> By Rick </span>
                                            </div>
                                            <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                            <a class="btn pull-right" href="#">Read more</a>
                                        </div>
                                    </li>
                                </div>
                                <div class="row">
                                    <li class="span4">
                                        <div class="thumbnail">
                                            <div class="img-wrap2">
                                                <a href="#"><img src="Content/img/image_4.jpg" alt=""/></a>
                                            </div>
                                            <h3 class="with-border">Theophrastus, dicat tantas</h3>
                                            <div class="info-panel clearfix">
                                                <span class="pull-left"><time datetime=""><i class="icon-calendar "></i> Sep 19, 2013</time></span>
                                                <span class="pull-right"><i class="icon-user"></i> By Rick </span>
                                            </div>
                                            <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                            <a class="btn pull-right" href="#">Read more</a>
                                        </div>
                                    </li>
                                    <li class="span4">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="#"><img src="Content/img/image_5.jpg" alt=""/></a>
                                            </div>
                                            <h3 class="with-border">Cras metus elit, consectetur sed</h3>
                                            <div class="info-panel clearfix">
                                                <span class="pull-left"><time datetime=""><i class="icon-calendar "></i> Sep 19, 2013</time></span>
                                                <span class="pull-right"><i class="icon-user"></i> By Rick </span>
                                            </div>
                                            <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                            <a class="btn pull-right" href="#">Read more</a>
                                        </div>
                                    </li>
                                    <li class="span4">
                                        <div class="thumbnail">
                                            <div class="img-wrap">
                                                <a href="#"><img src="Content/img/image_6.jpg" alt=""/></a>
                                            </div>
                                            <h3 class="with-border">Lorem ipsum dolor sit amet</h3>
                                            <div class="info-panel clearfix">
                                                <span class="pull-left"><time datetime=""><i class="icon-calendar "></i> Sep 19, 2013</time></span>
                                                <span class="pull-right"><i class="icon-user"></i> By Rick </span>
                                            </div>
                                            <p>Pellentesque ornare, risus et vulputate mollis, massa nulla aliquam neque, sed hendrerit orci quam eget ante.</p>
                                            <a class="btn pull-right" href="#">Read more</a>
                                        </div>
                                    </li>
                                </div>
                            </ul>
                        </div>
                    </div>
                </section>

                <div id="price-bg" class="parallax" style="background-image: url(Content/img/bg9.jpg);">
                    <div class="#fff-bg">
                        <div class="text">
                            <blockquote>
                                <h2>Have a fun</h2>
                                "Creativity is inventing, experimenting, growing, taking risks, breaking rules, making mistakes, and having fun"
                                <small class="color">Mary Lou Cook</small>
                            </blockquote>
                        </div>
                        <a href="#" class="toSection" data-section="6"><i class="icon-double-angle-down"></i></a>
                    </div>
                </div>

                <section id="price" class="text-block" data-section="6">
                    <div class="light-bg">
                        <div class="container">
                            <h2>$ Pricing tables <small class="color">/ buy this theme</small></h2>
                            <div class="row-fluid">
                                <article class="span4 price-block">
                                    <h3>Single purchase</h3>
                                    <div class="price-table">
                                        <p>$ <span class="price">10</span> / mo</p>
                                        <div class="price-features">
                                            <ul>
                                                <li><i class="icon-ok"></i> Single installation</li>
                                                <li><i class="icon-ok"></i> Full Responsive</li>
                                                <li><i class="icon-ok"></i> Parallax Effect</li>
                                                <li><i class="icon-ok"></i> HTML5 & CSS3</li>
                                                <li><i class="icon-ok"></i> Smooth scrolling</li>
                                                <li><i class="icon-ok"></i> Unlimited Support</li>
                                                <li><i class="icon-ok"></i> Bootstrap 2.3.0</li>
                                            </ul>
                                        </div>
                                        <a class="btn btn-large" href="#">Select now</a>
                                    </div>
                                </article>
                                <article class="span4 price-block">
                                    <h3>Multiple purchase</h3>
                                    <div class="price-table recommend">
                                        <p>$ <span class="price">50</span> / mo</p>
                                        <div class="price-features">
                                            <ul>
                                                <li><i class="icon-ok"></i> Multiple installation</li>
                                                <li><i class="icon-ok"></i> Full Responsive</li>
                                                <li><i class="icon-ok"></i> Parallax Effect</li>
                                                <li><i class="icon-ok"></i> HTML5 & CSS3</li>
                                                <li><i class="icon-ok"></i> Smooth scrolling</li>
                                                <li><i class="icon-ok"></i> Unlimited Support</li>
                                                <li><i class="icon-ok"></i> Bootstrap 2.3.0</li>
                                            </ul>
                                        </div>
                                        <a class="btn btn-large" href="#">Buy now</a>
                                    </div>
                                </article>
                                <article class="span4 price-block">
                                    <h3>Extended license</h3>
                                    <div class="price-table">
                                        <p>$ <span class="price">500</span> / mo</p>
                                        <div class="price-features">
                                            <ul>
                                                <li><i class="icon-ok"></i> Unlimited installation</li>
                                                <li><i class="icon-ok"></i> Full Responsive</li>
                                                <li><i class="icon-ok"></i> Parallax Effect</li>
                                                <li><i class="icon-ok"></i> HTML5 & CSS3</li>
                                                <li><i class="icon-ok"></i> Smooth scrolling</li>
                                                <li><i class="icon-ok"></i> Unlimited Support</li>
                                                <li><i class="icon-ok"></i> Bootstrap 2.3.0</li>
                                            </ul>
                                        </div>
                                        <a class="btn btn-large" href="#">Select now</a>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </section> -->

            <section id="contacts" class="text-block" data-section="4">
                <div class="dark-bg">
                    <div class="container">
                        <h2><i class="icon-map-marker"></i> Get in touch</h2>
                        <p>Drop us a line.</p>
                        <div class="row-fluid section">
                            <div class="span8">
                                <h3 class="with-border">Want to ask something?</h3>
                                <form class="form clearfix" action="">
                                    <input type="text" class="span12" placeholder="Name" name="name">
                                    <input type="email" class="span12" placeholder="Email" name="email">
                                    <input type="text" class="span12" placeholder="Subject" name="subject">
                                    <textarea class="span12" placeholder="Message" name="message" rows="6"></textarea>
                                    <button class="btn btn-large pull-right" type="submit">Submit</button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <!--
                    <iframe width="100%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.ru/?ie=UTF8&amp;ll=37.775735,-122.422543&amp;spn=0.070962,0.153122&amp;t=m&amp;z=13&amp;output=embed"></iframe>
                -->
            <footer>
                <div class="light-bg">
                    <div class="container">
                        <div class="row-fluid">
                            <div class="span4">
                                <h4>Get in touch</h4>
                                <div class="info-block">
                                    <article class="clearfix">
                                        <i class="icon-globe"></i>
                                        <address>
                                            3741 Buchanan Street<br />
                                            San Francisco, CA 94123<br />

                                        </address>
                                    </article>
                                    <article class="clearfix">
                                        <i class="icon-phone"></i>
                                        <p>8 417 274 2933</p>
                                    </article>
                                    <article class="clearfix">
                                        <i class="icon-envelope"></i>
                                        <p><a href="mailto:info@kwasant.com">info@kwasant.com</a></p>
                                    </article>
                                </div>
                            </div>
                            <div class="span4">
                                <h4>Follow us</h4>
                                <div class="social">
                                    <ul class="unstyled clearfix">
                                        <li>
                                            <a target="_blank" title="" href="#">
                                                <i class="icon-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a target="_blank" title="" href="#">
                                                <i class="icon-facebook"></i>
                                            </a>
                                        </li>

                                        <li>
                                            <a target="_blank" title="" href="#">
                                                <i class="icon-linkedin"></i>
                                            </a>
                                        </li>

                                        <li>
                                            <a target="_blank" title="" href="#">
                                                <i class="icon-google-plus"></i>
                                            </a>
                                        </li>


                                    </ul>
                                </div>
                            </div>
                            <div class="span4">
                                <h4>Recent posts</h4>
                                <!-- <ul>
                                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                        <li><a href="#">Cum maiestatis necessitatibus ad</a></li>
                                        <li><a href="#">Dicat tantas copiosae eam id</a></li>
                                        <li><a href="#">Theophrastus, dicat tantas</a></li>
                                        <li><a href="#">Cras metus elit, consectetur sed</a></li>
                                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                                    </ul>
                                    -->
                            </div>

                        </div>
                    </div>
                </div>
                <div class="copyright-block dark-bg clearfix">
                    <div class="container">
                        <div>
                            <p class="text-center">Copyright &copy; 2014 by Maginot Technologies, LLC. All Rights Reserved</p>
                        </div>

                    </div>
                </div>
            </footer>

            <a class="goTop goTop-link"><i class="icon-arrow-up"></i></a>


            <% Response.Write(Scripts.Render("~/bundles/js/jquery").ToHtmlString()); %>
            <% Response.Write(Scripts.Render("~/bundles/js/bootstrap").ToHtmlString()); %>
            <% Response.Write(Scripts.Render("~/bundles/js/colorbox").ToHtmlString()); %>
            <% Response.Write(Scripts.Render("~/bundles/js/waypoints").ToHtmlString()); %>
            <% Response.Write(Scripts.Render("~/bundles/js/placeholder").ToHtmlString()); %>
            <% Response.Write(Scripts.Render("~/bundles/js/modernizr").ToHtmlString()); %>
            <% Response.Write(Scripts.Render("~/bundles/js/main").ToHtmlString()); %>
</body>
</html>
