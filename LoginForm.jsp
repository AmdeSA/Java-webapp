<%-- 
    Document   : Signup
    Created on : Feb 3, 2018, 12:30:22 PM
    Author     : amdeselassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Site made with Mobirise Website Builder v3.12.1, https://mobirise.com -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v3.12.1, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="assetss/images/logo.png" type="image/x-icon">
        <meta name="description" content="Web Page Creator Description">
        <title>Login</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
        <link rel="stylesheet" href="assetss/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assetss/animate.css/animate.min.css">
        <link rel="stylesheet" href="assetss/mobirise/css/style.css">
        <link rel="stylesheet" href="assetss/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="style.css" type="text/css">



    </head>
    <body>
        <section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-7">
            <div class="mbr-navbar__section mbr-section">
                <div class="mbr-section__container container">
                    <div class="mbr-navbar__container">

                        <div class="mbr-navbar__hamburger mbr-hamburger"><span class="mbr-hamburger__line"></span></div>
                        <div class="mbr-navbar__column mbr-navbar__menu">
                            <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                                <div class="mbr-navbar__column">
                                    <ul class="mbr-navbar__items mbr-navbar__items--right float-left mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp">HOME</a></li> <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#header1-6">Top</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.html#contacts1-4">ABOUT</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.html#contacts1-4">CONTACT</a></li> </ul>                            
                                    <ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active"><li class="mbr-navbar__item"><a class="mbr-buttons__btn btn btn-danger" href="Logout.jsp">LOGOUT</a></li></ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="form1-n" style="background-color: rgb(239, 239, 239);">

            <div class="mbr-section__container mbr-section__container--std-padding container" style="padding-top: 93px; padding-bottom: 93px;">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-header mbr-header--center mbr-header--std-padding">
                                    <h2 class="mbr-header__text" >LOGIN FORM</h2>
                                </div>
                                <form action="Check Login.jsp" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="namme" required="" placeholder="User Name*">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="pass" required="" placeholder="Password*">
                                    </div>
                                    <div class="mbr-buttons btn-inverse mbr-buttons--center"><button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger">Login</button> </div>
                                    <br>
                                    <div class="mbr-buttons--center"><a href="SignupForm.jsp">Didnt have account? signup here</a></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="Footer.jsp" flush="true" />


        <script src="assetss/web/assets/jquery/jquery.min.js"></script>
        <script src="assetss/bootstrap/js/bootstrap.min.js"></script>
        <script src="assetss/smooth-scroll/smooth-scroll.js"></script>
        <script src="assetss/jarallax/jarallax.js"></script>
        <!--[if lte IE 9]>
          <script src="assetss/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        <script src="assetss/mobirise/js/script.js"></script>


    </body>
</html>
