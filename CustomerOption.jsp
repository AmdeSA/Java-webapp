<%-- 
    Document   : CustomerOption
    Created on : May 22, 2019, 1:27:32 AM
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
        <title>Options</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
        <link rel="stylesheet" href="assetss/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assetss/animate.css/animate.min.css">
        <link rel="stylesheet" href="assetss/mobirise/css/style.css">
        <link rel="stylesheet" href="assetss/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="stylesheet" href="assetss/Signup.css" type="text/css">
        <script type="text/javascript" language="javascript" src="assetss/jquery-3.4.0.min.js"></script>
        <script type="text/javascript" language="javascript" src="assetss/Signup.js"></script>

    </head>
    <body>
            <%
            if(session.getAttribute("sessionName") == null || session.getAttribute("sessionName") == "" ){
                response.sendRedirect("LoginForm.jsp");
            }
            %>

        <jsp:include page="Header.jsp" flush="true"></jsp:include> 
       

            <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="form1-nn" style="background-color: rgb(239, 239, 239);">

                <div class="mbr-section__container mbr-section__container--std-padding container" style="padding-top: 93px; padding-bottom: 93px;">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <div class="mbr-header mbr-header--center mbr-header--std-padding">
                                        <h2 class="mbr-header__text" > Select Option </h2>
                                    </div>

                                    <form class="option_customer">
                                        <b> <div class="mbr-buttons btn-inverse mbr-buttons--center"><a href="Book.jsp" style="text-decoration: none"><input type="button" class="btn-Option" id="submit_btn" value="Book Theater"></a></div> </b>
                                        <br>
                                        <b>  <div class="mbr-buttons btn-inverse mbr-buttons--center"><a href="ModifyBooked.jsp" style="text-decoration: none"><input type="button" class="btn-Option" id="submit_btn" value="Edit Booked Theater"></a></div> </b>
                                        <br>
                                        <b> <div class="mbr-buttons btn-inverse mbr-buttons--center"><a href="Cancle.jsp" style="text-decoration: none"><input type="button" class="btn-Option" id="submit_btn" value="Cancle Theater"></a></div> </b>
                                        <br>
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
