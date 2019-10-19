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
        <title>Sign up</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
        <link rel="stylesheet" href="assetss/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assetss/animate.css/animate.min.css">
        <link rel="stylesheet" href="assetss/mobirise/css/style.css">
        <link rel="stylesheet" href="assetss/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="stylesheet" href="assetss/Signup.css" type="text/css">
        <link rel="stylesheet" href="assets/pop.css" type="text/css">
        <script type="text/javascript" language="javascript" src="assetss/jquery-3.4.0.min.js"></script>
        <script type="text/javascript" language="javascript" src="assetss/Signup.js"></script>




    </head>
    <body>

        <jsp:include page="Header.jsp" flush="true"></jsp:include>

            <div class="container--">


                <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="form1-nn" style="background-color: rgb(239, 239, 239);">

                    <div class="mbr-section__container mbr-section__container--std-padding container" style="padding-top: 93px; padding-bottom: 93px;">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <div class="mbr-header mbr-header--center mbr-header--std-padding">
                                            <h2 class="mbr-header__text" >SIGNUP FORM</h2>
                                        </div>

                                        <form id="form_register" action="SignupDB.jsp" method="POST">

                                            <div class="form-group">
                                                <div class="form-control">

                                                    <div id="singup-form">  

                                                        <div class="form-group">
                                                            <input type="text" class="name_text" id="form-01" name="fname" placeholder="First Name "><span class="error-msg" id="fname-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="text" class="lname_text" id="form-01" name="lname" placeholder="Last Name"><span class="error-msg" id="lname-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="text" class="user_text" id="form-01" name="username" placeholder="User Name"><span class="error-msg" id="usr-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="password" class="password" id="form-01" name="password" placeholder="Password"><span class="error-msg" id="pass-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="password" class="confirm_pass" id="form-01" name="confirm_pass" placeholder="Confirm Password"><span class="error-msg" id="confirm-pass-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="text" class="email-text" id="form-01" name="email" placeholder="Email"><span class="error-msg" id="email-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="text" class="phone-text" id="form-01" name="phone" placeholder="Phone Number"><span class="error-msg" id="phone-error-msg"></span>
                                                        </div>

                                                        <div class="form-group">
                                                            <input type="text" class="city-text" id="form-01" name="city" placeholder="City"><span class="error-msg" id="city-error-msg"></span>
                                                        </div>

                                                    </div>

                                                </div>
                                            </div>

                                            <div class="mbr-buttons btn-inverse mbr-buttons--center"><input type="submit" class="mbr-buttons__btn btn btn-lg btn-danger" id="submit_btn" value="Register"></div>
                                            <br>
                                            <a href="LoginForm.jsp" style="padding-left: 250px;"> already signed up? Login here </a> 
                                        </form>
                                        <div class="popup--">
                                            <span id="close">&times;</span>
                                            <p12> Data inserted Successfully :-)</p12>
                                            <a href="index.jsp" ><button class="btn-Home"><p12>Back to HOME</p12></button></a>
                                        </div>
                                    </div>
                                    <div class="cover">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

        <jsp:include page="Footer.jsp" flush="true" />


        <script src="assetss/web/assets/jquery/jquery.min.js"></script>
        <script src="assetss/bootstrap/js/bootstrap.min.js"></script>
        <script src="assetss/smooth-scroll/smooth-scroll.js"></script>
        <script src="assetss/jarallax/jarallax.js"></script>
        <!--[if lte IE 9]>
          <script src="assetss/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        <script src="assetss/mobirise/js/script.js"></script>
        <script>
            $(document).ready(function () {
                $("#submit_btn").on('click', function () {
                    $(".cover").fadeIn('slow');
                    $(".popup--").fadeIn('slow');
                });
            });


        </script>



    </body>
</html>
