<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Volton Free Responsive Template</title>
        <meta name="description" content="">        
        <link href="http://allfont.ru/allfont.css?fonts=hermes" rel="stylesheet" type="text/css" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='stylesheet' href='<c:url value="/resources/css/normalize.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/font-awesome.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/bootstrap.min.css" />' type='text/css' media='all' />
        <link rel='stylesheet' href='<c:url value="/resources/css/templatemo-style.css" />' type='text/css' media='all' />

        <script src='<c:url value="/resources/js/vendor/modernizr-2.6.2.min.js" />'></script>
    </head>
    <body>
        <div class="responsive-header visible-xs visible-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="top-section">
                            <div class="profile-image">
                                <img src='<c:url value="/resources/img/profile.jpg" />' alt="Volton">
                            </div>
                            <div class="profile-content">
                                <h3 class="profile-title">Калинчук</h3>
                                <p class="profile-description">Ігор Володимирович</p>


                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="toggle-menu"><i class="fa fa-bars"></i></a>
                <div class="main-navigation responsive-menu">
                    <ul class="navigation">
                        <li><a href="#top"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#about"><i class="fa fa-user"></i>About Me</a></li>
                        <li><a href="#projects"><i class="fa fa-newspaper-o"></i>My Gallery</a></li>
                        <li><a href="#contact"><i class="fa fa-envelope"></i>Contact Me</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- SIDEBAR -->
        <div class="sidebar-menu hidden-xs hidden-sm">
            <div class="top-section">
                <div class="profile-image">
                    <img src='<c:url value="/resources/img/profile.jpg" />' alt="Volton">
                </div>
                <h3 class="profile-title">Калинчук</h3>
                <p class="profile-description">Ігор Володимирович</p>
            </div> <!-- top-section -->
            <div class="main-navigation">
                <ul class="navigation">
                    <li><a href="#top"><i class="fa fa-globe"></i>Welcome</a></li>
                    <li><a href="#about"><i class="fa fa-pencil"></i>About Me</a></li>
                    <li><a href="#projects"><i class="fa fa-paperclip"></i>My Gallery</a></li>
                    <li><a href="#contact"><i class="fa fa-link"></i>Contact Me</a></li>
                </ul>
            </div> <!-- .main-navigation -->
            <div class="social-icons">
                <ul>
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                    <li><a href="#"><i class="fa fa-rss"></i></a></li>
                </ul>
            </div> <!-- .social-icons -->
        </div> <!-- .sidebar-menu -->


        <div class="banner-bg" id="top">
            <!-- language-bar -->
            <div class="roundborders">
                    <c:forEach var="tempLocale" items="${localeChoices}">
                        <c:choose>
                            <c:when test ="${pageContext.response.locale eq tempLocale.key}"> 
                            <img src='<c:url value='/resources/img/locale_${tempLocale.key}.png' />'/>&nbsp;&nbsp;
                        </c:when>    
                        <c:otherwise>
                            <a href='?lang=${tempLocale.key}'><img src='<c:url value='/resources/img/locale_${tempLocale.key}.png' />'/></a>&nbsp;&nbsp;
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

            </div>
            <!-- .language-bar -->


            <div class="banner-overlay"></div>
            <div class="welcome-text">
                <h2>${quotation.author}</h2>
                <h5>${quotation.message}</h5>
            </div>
        </div>

        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="fluid-container">

                <div class="content-wrapper">

                    <!-- ABOUT -->
                    <div class="page-section" id="about">
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="widget-title"><fmt:message key="label.Learn.About.Me" /></h4>
                                <div class="about-image">
                                    <img src='<c:url value="/resources/img/8.jpg" />' alt="about me">
                                </div>                                    

                                <h2>Current locale is ${pageContext.response.locale}</h2>

                                <p>Volton is free website design from <span class="blue">template</span><span class="green">mo</span>. You can use this template for any purpose. Please tell your friends about it. Thank you. Credit goes to <a rel="nofollow" href="http://unsplash.com" target="_parent">Unsplash</a> for images used in this design. You can <strong>change menu icons</strong> by checking <a rel="nofollow" href="http://fontawesome.info/font-awesome-icon-world-map/" target="_parent">Font Awesome</a> (version 4). Example: <strong>&lt;i class=&quot;fa fa-camera&quot;&gt;&lt;/i&gt;</strong></p>
                                <hr>
                            </div>
                        </div> <!-- #about -->
                    </div>

                    <!-- PROJECTS -->
                    <div class="page-section" id="projects">
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="widget-title">PHOTOS OF WHAT I DO</h4>
                                <p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Maecenas et lorem molestie, maximus justo dignissim, cursus nisl. Nullam at ante quis ex pharetra pulvinar quis id dolor. Integer lorem odio, euismod ut sem sit amet, imperdiet condimentum diam.</p>
                            </div>
                        </div>
                        <div class="row projects-holder">
                            <div class="col-md-4 col-sm-6">
                                <div class="project-item">
                                    <img src='<c:url value="/resources/img/1.jpg" />' alt="">
                                    <div class="project-hover">
                                        <div class="inside">
                                            <h5><a href="#">Pellentesque porta ligula</a></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="project-item">
                                    <img src='<c:url value="/resources/img/2.jpg" />' alt="">
                                    <div class="project-hover">
                                        <div class="inside">
                                            <h5><a href="#">Pellentesque porta ligula</a></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="project-item">
                                    <img src='<c:url value="/resources/img/3.jpg" />' alt="">
                                    <div class="project-hover">
                                        <div class="inside">
                                            <h5><a href="#">Pellentesque porta ligula</a></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="project-item">
                                    <img src='<c:url value="/resources/img/4.jpg" />' alt="">
                                    <div class="project-hover">
                                        <div class="inside">
                                            <h5><a href="#">Pellentesque porta ligula</a></h5>
                                            <p>Quisque mattis sit amet dolor eu scelerisque. Vivamus bibendum massa et nisl tempus commodo.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="project-item">
                                    <img src='<c:url value="/resources/img/5.jpg" />' alt="">
                                    <div class="project-hover">
                                        <div class="inside">
                                            <h5><a href="#">Pellentesque porta ligula</a></h5>
                                            <p>Quisque mattis sit amet dolor eu scelerisque. Vivamus bibendum massa et nisl tempus commodo.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="project-item">
                                    <img src='<c:url value="/resources/img/6.jpg" />' alt="">
                                    <div class="project-hover">
                                        <div class="inside">
                                            <h5><a href="#">Pellentesque porta ligula</a></h5>
                                            <p>Quisque mattis sit amet dolor eu scelerisque. Vivamus bibendum massa et nisl tempus commodo.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- .projects-holder -->
                    </div>
                    <hr>

                    <!-- CONTACT -->
                    <div class="page-section" id="contact">
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="widget-title">PLACE TO TALK WITH ME</h4>
                                <p>Vestibulum ac iaculis erat, in semper dolor. Maecenas et lorem molestie, maximus justo dignissim, cursus nisl. Nullam at ante quis ex pharetra pulvinar quis id dolor. Integer lorem odio, euismod ut sem sit amet, imperdiet condimentum diam.</p>
                            </div>
                        </div>
                        <div class="row">
                            <form action="#" method="post" class="contact-form">
                                <fieldset class="col-md-4 col-sm-6">
                                    <input type="text" id="your-name" placeholder="Your Name...">
                                </fieldset>
                                <fieldset class="col-md-4 col-sm-6">
                                    <input type="email" id="email" placeholder="Your Email...">
                                </fieldset>
                                <fieldset class="col-md-4 col-sm-12">
                                    <input type="text" id="your-subject" placeholder="Subject...">
                                </fieldset>
                                <fieldset class="col-md-12 col-sm-12">
                                    <textarea name="message" id="message" cols="30" rows="6" placeholder="Leave your message..."></textarea>
                                </fieldset>
                                <fieldset class="col-md-12 col-sm-12">
                                    <input type="submit" class="button big default" value="Send Message">
                                </fieldset>
                            </form>
                        </div> <!-- .contact-form -->
                    </div>
                    <hr>

                    <div class="row" id="footer">
                        <div class="col-md-12 text-center">
                            <p class="copyright-text">Copyright &copy; 2015 Company Name</p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <script src='<c:url value="/resources/js/vendor/jquery-1.10.2.min.js" />'></script>
        <script src='<c:url value="/resources/js/min/plugins.min.js" />'></script>
        <script src='<c:url value="/resources/js/min/main.min.js" />'></script>


    </body>
</html>