                                                
<%@page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Site made with Mobirise Website Builder v3.12.1, https://mobirise.com -->
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
    <body bgcolor="white">
        <% if (session.getAttribute("sessionName") == null || session.getAttribute("sessionName") == "") {
                response.sendRedirect("LoginForm.jsp");
                System.out.print(session.getAttribute("sessionName"));
            }
     
        %>

     <jsp:include page="Header.jsp" flush="true"></jsp:include> 

        <section class="engine"><a rel="external" href="https://mobirise.com">Mobirise Site Generator</a></section><section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted mbr-parallax-background mbr-after-navbar" id="header1-6" style="background-image: url(assetss/images/bg5.jpg);">
            <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-box__magnet--center-left">

                <div class="mbr-box__container mbr-section__container container">
                    <div class="mbr-box mbr-box--stretched"><div class="mbr-box__magnet mbr-box__magnet--center-left">
                            <div class="row"><div class=" col-sm-6 col-sm-offset-6">
                                    <div class="mbr-hero animated fadeInUp">
                                        <h1 class="mbr-hero__text">Welcome Sir</h1>
                                        <p class="mbr-hero__subtext">ONLINE BOOKING SYSTEM DEVELOPED BY ADM GROUPS  <br></p>
                                    </div>
                                    <div class="mbr-buttons btn-inverse mbr-buttons--left"> <a class="mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay" href="Logout.jsp#form1-nn">Log Out&nbsp;</a></div>
                                </div></div>
                        </div></div>
                </div>
                <div class="mbr-arrow mbr-arrow--floating text-center">
                    <div class="mbr-section__container container">
                        <a class="mbr-arrow__link" href="#gallery1-1"><i class="glyphicon glyphicon-menu-down"></i></a>
                    </div>
                </div>
            </div>
        </section>


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
                                                <h1 class="mbr-hero__text">User List </h1>

                                                <p class="mbr-hero__subtext"> 
                                                    <sql:query var="result" dataSource="jdbc/CinemaDB">
                                                        SELECT * FROM User
                                                    </sql:query>

                                                <table border="1">
                                                    <!-- column headers -->
                                                    <tr>
                                                        <c:forEach var="columnName" items="${result.columnNames}">
                                                            <th><c:out value="${columnName}"/></th>
                                                            </c:forEach>
                                                    </tr>
                                                    <!-- column data -->
                                                    <c:forEach var="row" items="${result.rowsByIndex}">
                                                        <tr>
                                                            <c:forEach var="column" items="${row}">
                                                                <td><c:out value="${column}"/></td>
                                                            </c:forEach>
                                                        </tr>
                                                    </c:forEach>
                                                </table> </p>
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
                                                <h1 class="mbr-hero__text">Booked Movie's</h1>
                                                <center>
                                                    <p class="mbr-hero__subtext">
                                                        <sql:query var="result" dataSource="jdbc/CinemaDB">
                                                            SELECT * FROM Book

                                                        </sql:query>

                                                    <table border="1">
                                                        <!-- column headers -->
                                                        <tr>
                                                            <c:forEach var="columnName" items="${result.columnNames}">
                                                                <th><c:out value="${columnName}"/></th>
                                                                </c:forEach>
                                                        </tr>
                                                        <!-- column data -->
                                                        <c:forEach var="row" items="${result.rowsByIndex}">
                                                            <tr>
                                                                <c:forEach var="column" items="${row}">
                                                                    <td><c:out value="${column}"/></td>
                                                                </c:forEach>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                    </p>
                                                </center>
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
                                                <h1 class="mbr-hero__text">ADD Employee</h1>
                                             
                                                <form action="AddEmployeeDB.jsp" method="POST">
                                                    <p class="mbr-hero__subtext">
                                                        <select style="color: black;" name="List">
                                                            <option selected="selected">It operator</option>
                                                            <option>Ticket Taller </option>
                                                        </select>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="FirstName" placeholder="First Name*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="LastName" required="" placeholder="Last Name*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="UserName" placeholder="UserName*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="password" class="form-control" name="Password" placeholder="Password*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="password" class="form-control" name="CPassword" placeholder="Confirm Password*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Telephon" placeholder="Telephone*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="Date" placeholder="Date*">
                                                    </div>
                                                    </p>
                                                    <div class="mbr-buttons btn-inverse mbr-buttons--center"><button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger" value="submit">Save</button> <button type="reset" class="mbr-buttons__btn btn btn-lg btn-danger">Cancle</button></div>

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
                                                <h1 class="mbr-hero__text">Movie List</h1>

                                                <p class="mbr-hero__subtext">
                                                <center>
                                                    <sql:query var="result" dataSource="jdbc/CinemaDB">
                                                        SELECT * FROM MovieList
                                                    </sql:query>

                                                    <table border="1">
                                                        <!-- column headers -->
                                                        <tr>
                                                            <c:forEach var="columnName" items="${result.columnNames}">
                                                                <th><c:out value="${columnName}"/></th>
                                                                </c:forEach>
                                                        </tr>
                                                        <!-- column data -->
                                                        <c:forEach var="row" items="${result.rowsByIndex}">
                                                            <tr>
                                                                <c:forEach var="column" items="${row}">
                                                                    <td><c:out value="${column}"/></td>
                                                                </c:forEach>
                                                            </tr>
                                                        </c:forEach>
                                                    </table>
                                                </center>

                                                </p>
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
                                                <h1 class="mbr-hero__text">Remove Employee</h1>

                                                <p class="mbr-hero__subtext">
                                               
                                                
                                                <form action="RemoveEmployeeDB.jsp" method="post">
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