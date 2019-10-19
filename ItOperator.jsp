<%-- 
    Document   : Employee
    Created on : Apr 13, 2019, 9:57:17 PM
    Author     : amdeselassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v3.12.1, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
        <meta name="description" content="">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/animate.css/animate.min.css">
        <link rel="stylesheet" href="assets/mobirise/css/style.css">
        <link rel="stylesheet" href="assets/mobirise-slider/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
       
        <% 
         if (session.getAttribute("sessionName") == null || session.getAttribute("sessionName") == "") {
                response.sendRedirect("LoginForm.jsp");
                System.out.print(session.getAttribute("sessionName"));
            }
       
        %>
        <jsp:include page="Header.jsp" flush="true"></jsp:include> 
        
        <section class="mbr-slider mbr-section mbr-section--no-padding carousel slide" data-ride="carousel" data-wrap="true" data-interval="5000" id="slider-i" style="background-color: rgb(0, 0, 0);">
            <div class="mbr-section__container">
                <div>
                    <ol class="carousel-indicators">
                        <li data-app-prevent-settings="" data-target="#slider-i" data-slide-to="0" class="active"></li><li data-app-prevent-settings="" data-target="#slider-i" data-slide-to="1"></li><li data-app-prevent-settings="" data-target="#slider-i" data-slide-to="2"></li><li data-app-prevent-settings="" data-target="#slider-i" class="" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height active" style="background-image: url(assets/images/slide1.jpg);">
                            <div class="mbr-box__magnet mbr-box__magnet--center-center mbr-box__magnet--sm-padding">

                                <div class=" container">

                                    <div class="row">
                                        <div class=" col-md-8 col-md-offset-2">  

                                            <div class="mbr-hero">
                                                <h1 class="mbr-hero__text">ADD Theater</h1>
                                                <form action="Add.jsp" method="post">
                                                    <p class="mbr-hero__subtext">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Title" placeholder="Title*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Rate" required="" placeholder="Rate*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Description" placeholder="Description*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Price" placeholder="Price*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Time" placeholder="Time*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Date" placeholder="Date*">
                                                    </div>
                                                    </p>
                                                    <div class="mbr-buttons btn-inverse mbr-buttons--center"><button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger">Save</button> <button type="reset" class="mbr-buttons__btn btn btn-lg btn-danger">Cancle</button></div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(assets/images/slide1.jpg);">
                            <div class="mbr-box__magnet mbr-box__magnet--center-center mbr-box__magnet--sm-padding">

                                <div class=" container">

                                    <div class="row">
                                        <div class=" col-md-8 col-md-offset-2">  

                                            <div class="mbr-hero">
                                                <h1 class="mbr-hero__text">Modify Theater</h1>
                                                <form action="Add.jsp" method="post">
                                                    <p class="mbr-hero__subtext">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Title" placeholder="Title*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Rate" required="" placeholder="Rate*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Description" placeholder="Description*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Price" placeholder="Price*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Time" placeholder="Time*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Date" placeholder="Date*">
                                                    </div>
                                                    </p>
                                                    <div class="mbr-buttons btn-inverse mbr-buttons--center"><button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger">Save</button> <button type="reset" class="mbr-buttons__btn btn btn-lg btn-danger">Cancle</button></div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                        <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(assets/images/slide1.jpg);">
                            <div class="mbr-box__magnet mbr-box__magnet--center-center mbr-box__magnet--sm-padding">

                                <div class=" container">

                                    <div class="row">
                                        <div class=" col-md-8 col-md-offset-2">  

                                            <div class="mbr-hero">
                                                <h1 class="mbr-hero__text">Remove Theater</h1>

                                                <p class="mbr-hero__subtext">
                                                <form action="Remove.jsp" method="post">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="idMovie" required="" placeholder="Movie ID*">
                                                    </div>
                                                    <div class="mbr-buttons btn-inverse mbr-buttons--center"><button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger">Remove</button> <button type="reset" class="mbr-buttons__btn btn btn-lg btn-danger">Cancle</button></div>
                                                </form></p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                    <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-i">
                        <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-i">
                        <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </section>

        <section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="contacts1-4" style="background-color: rgb(60, 60, 60);">

            <div class="mbr-section__container container">
                <div class="mbr-contacts mbr-contacts--wysiwyg row" style="padding-top: 45px; padding-bottom: 45px;">
                    <div class="col-sm-4">
                        <div><a href="https://mobirise.com" class="mbri-info mbr-iconfont mbr-iconfont-contacts1" style="color: rgb(249, 115, 82);"></a></div>
                    </div>
                    <div class="col-sm-8">
                        <div class="row">
                            <div class="col-sm-4">
                                <p class="mbr-contacts__text"><strong>ADDRESS</strong><br>
                                    1234 Street Name<br>
                                    City, AA 99999</p>
                            </div>
                            <div class="col-sm-4">
                                <p class="mbr-contacts__text"><strong>CONTACTS</strong><br>
                                    Email: support@mobirise.com<br>
                                    Phone: +1 (0) 000 0000 001<br>
                                    Fax: +1 (0) 000 0000 002</p>
                            </div>
                            <div class="col-sm-4"><p class="mbr-contacts__text"><strong>LINKS</strong></p><ul class="mbr-contacts__list"><li><a class="mbr-contacts__link text-gray" href="https://mobirise.com/">Website builder</a></li><li><a class="mbr-contacts__link text-gray" href="https://mobirise.com/mobirise-free-win.zip">Download for Windows</a></li><li><a class="mbr-contacts__link text-gray" href="https://mobirise.com/mobirise-free-mac.zip">Download for Mac</a></li></ul></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/smooth-scroll/smooth-scroll.js"></script>
        <script src="assets/jarallax/jarallax.js"></script>
        <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
        <script src="assets/mobirise/js/script.js"></script>


</body>
</html>
