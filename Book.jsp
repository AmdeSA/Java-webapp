<%-- 
    Document   : index
    Created on : Mar 31, 2019, 2:37:45 PM
    Author     : amdeselassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta name="HandheldFriendly" content="true">
        <title>Booking Form</title>
        <link href="Payment_files/formCss.css" rel="stylesheet" type="text/css">
        <link type="text/css" media="print" rel="stylesheet" href="Payment_files/printForm.css">
        <link type="text/css" rel="stylesheet" href="Payment_files/nova.css">
        <link type="text/css" rel="stylesheet" href="Payment_files/566a91c2977cdfcd478b4567.css">
        <style type="text/css">
            .form-label-left{
                width:150px;
            }
            .form-line{
                padding-top:12px;
                padding-bottom:12px;
            }
            .form-label-right{
                width:150px;
            }
            body, html{
                margin:0;
                padding:0;
                background:#fff;
            }

            .form-all{
                margin:0px auto;
                padding-top:0px;
                width:690px;
                color:#555 !important;
                font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
                font-size:14px;
            }
            .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
                color: #555;
            }

        </style>

        <style type="text/css" id="form-designer-style">
            /* Injected CSS Code */
            /*PREFERENCES STYLE*/
            .form-all {
                font-family: Lucida Grande, sans-serif;
            }
            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-family: Lucida Grande, sans-serif;
            }
            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-family: Lucida Grande, sans-serif;
            }
            .form-header-group {
                font-family: Lucida Grande, sans-serif;
            }
            .form-label {
                font-family: Lucida Grande, sans-serif;
            }

            .form-label.form-label-auto {

                display: block;
                float: none;
                text-align: left;
                width: 100%;

            }

            .form-line {
                margin-top: 12px;
                margin-bottom: 12px;
            }

            .form-all {
                width: 690px;
            }

            .form-label-left,
            .form-label-right,
            .form-label-left.form-label-auto,
            .form-label-right.form-label-auto {
                width: 150px;
            }

            .form-all {
                font-size: 14px
            }
            .form-all .qq-upload-button,
            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-size: 14px
            }
            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-size: 14px
            }

            .supernova .form-all, .form-all {
                background-color:#fff ;
                border: 1px solid transparent;
            }

            .form-all {
                color: #555;
            }
            .form-header-group .form-header {
                color: #555;
            }
            .form-header-group .form-subHeader {
                color: #555;
            }
            .form-label-top,
            .form-label-left,
            .form-label-right,
            .form-html,
            .form-checkbox-item label,
            .form-radio-item label {
                color: #555;
            }
            .form-sub-label {
                color: #6f6f6f;
            }

            .supernova {
                background-color: undefined;
            }
            .supernova body {
                background: transparent;
            }

            .form-textbox,
            .form-textarea,
            .form-radio-other-input,
            .form-checkbox-other-input,
            .form-captcha input,
            .form-spinner input {
                background-color: undefined;
            }

            .supernova {
                background-image: none;
            }
            #stage {
                background-image: none;
            }

            .form-all {
                background-image: none;
            }

            .ie-8 .form-all:before { display: none; }
            .ie-8 {
                margin-top: auto;
                margin-top: initial;
            }

            /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
            /* Injected CSS Code */
        </style>


        <link type="text/css" rel="stylesheet" href="Payment_files/form-submit-button-simple_orange.css">
        <script src="Payment_files/prototype.js" type="text/javascript"></script>
        <script src="Payment_files/jotform.js" type="text/javascript"></script>
        <script src="Payment_files/paypal.js" type="text/javascript"></script>
        <script type="text/javascript">
            JotForm.init(function () {
                productID = {"0": "input_3_1006", "1": "input_3_1007", "2": "input_3_1009", "3": "input_3_1008"};
                paymentType = "product";
                JotForm.setCurrencyFormat('ETB', true, 'point');
                JotForm.totalCounter({"input_3_1006": {"price": "40", "quantityField": "input_3_quantity_1006_0"}, "input_3_1007": {"price": "4.99"}, "input_3_1009": {"price": "2.99"}, "input_3_1008": {"price": "1.99"}});
                $$('.form-product-custom_quantity').each(function (el, i) {
                    el.observe('blur', function () {
                        isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)
                    })
                });
                $$('.form-product-custom_quantity').each(function (el, i) {
                    el.observe('focus', function () {
                        this.value == 0 ? this.value = '' : this.value
                    })
                });
                /*INIT-END*/
            });


        </script>
    </head>
    <body>
        <% if (session.getAttribute("sessionName") == null || session.getAttribute("sessionName") == "") {
                response.sendRedirect("LoginForm.jsp");
                System.out.print(session.getAttribute("sessionName"));
            }
            String n = (String) session.getAttribute("sessionName");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CinemaDB", "root", "password");

                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT Title FROM MovieList");

                Statement stt = con.createStatement();
                ResultSet rss = stt.executeQuery("SELECT Date1 FROM MovieDateTime");

                Statement st3 = con.createStatement();
                ResultSet rs3 = st3.executeQuery("SELECT Time1 FROM MovieDateTime");

        %>

        <jsp:include page="Header.jsp" flush="true"></jsp:include> 
        <br><br>
            <form action="BookDB.jsp" method="POST">
                <div class="form-all">
                    <ul class="form-section page-section">
                        <li id="cid_1" class="form-input-wide" data-type="control_head">
                            <div class="form-header-group ">
                                <div class="header-text httal htvam">
                                    <h2 id="header_1" class="form-header" data-component="header">
                                        Theater Booking Form
                                    </h2>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_paypal" id="id_3">
                            <div id="cid_3" class="form-input-wide">
                                <input class="form-checkbox " checked="true" id="input_3_1006" name="q3_input3[][id]" value="1006" type="checkbox" >
                                <label for="input_3_1006" class="form-product-container">
                                    <span data-wrapper-react="true">
                                        <span class="form-product-name" id="product-name-input_3_1006">
                                            Theater per-person 
                                        </span>
                                        <span class="form-product-details">
                                            <b>
                                                <span data-wrapper-react="true">
                                                    ETB
                                                    <span id="input_3_1006_price">40</span>
                                                </span>
                                            </b>
                                        </span>
                                    </span>
                                </label>
                            </div>

                            <br>

                            <div id="cid_4" class="form-input-wide">
                                <div data-wrapper-react="true">
                                    <div data-wrapper-react="true">
                                        <span class="form-product-item hover-product-item">
                                            <div data-wrapper-react="true" class="form-product-item-detail">
                                                <label class="form-sub-label" for="input_3_quantity_1006_0" style="min-height:13px"> Number of Tickets </label>
                                                <select name="ticket" id="input_3_quantity_1006_0" class="input_dropdown">
                                                    <option value="1" selected="selected"> 1 </option>
                                                    <option value="2"> 2 </option>
                                                    <option value="3"> 3 </option>
                                                    <option value="4"> 4 </option>
                                                    <option value="5"> 5 </option>
                                                    <option value="6"> 6 </option>
                                                    <option value="7"> 7 </option>
                                                    <option value="8"> 8 </option>
                                                    <option value="9"> 9 </option>
                                                    <option value="10"> 10 </option>
                                                </select>
                                                <br>

                                                <label class="form-sub-label" for="input_3_quantity_1006_0" style="min-height:13px"> Title </label>
                                                <select name="title" class="input_dropdown">
                                                <%while (rs.next()) {%>
                                                <option><%=rs.getString(1)%></option>
                                                <%}%>
                                            </select>

                                            <br>

                                            <label class="form-sub-label" for="input_3_quantity_1006_0" style="min-height:13px"> Date </label>
                                            <select name="date" class="input_dropdown">
                                                <%while (rss.next()) {%>
                                                <option><%=rss.getString(1)%></option>
                                                <%}%>
                                            </select>
                                            <br>

                                            <label class="form-sub-label" for="input_3_quantity_1006_0" style="min-height:13px"> Time </label>
                                            <select name="time" class="input_dropdown">
                                                <%while (rs3.next()) {%>
                                                <option><%=rs3.getString(1)%></option>
                                                <%}%>
                                            </select>

                                            <%} catch (Exception e) {
                                                    out.println(e);
                                                }%>

                                        </div>
                                    </span>

                                </div>

                                <b>
                                    <span id="total-text">
                                        Total
                                    </span>
                                    &nbsp;
                                    <span class="form-payment-price" name="Total">
                                        <span data-wrapper-react="true">
                                            ETB
                                            <span id="payment_total">0.00</span>
                                        </span>
                                    </span>
                                </b>
                            </div>
                        </div>
                        </div>
                    </li>
                    <li class="form-line" data-type="control_button" id="id_2">
                        <div id="cid_2" class="form-input-wide">
                            <div style="margin-left:156px" class="form-buttons-wrapper">
                                <button id="input_2" type="submit" class="form-submit-button form-submit-button-simple_orange" data-component="submit" value="submit" name="submit">
                                    Submit
                                </button>
                            </div>
                        </div>
                    </li>-
                </ul>
            </div>

        </form>
    </body>
</html>
