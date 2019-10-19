<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : modifyDB
    Created on : Jan 6, 2018, 5:44:26 PM
    Author     : amdeselassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> <%--Import sql package --%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String fName = request.getParameter("fname"); //Form name into String
            String lName = request.getParameter("lname"); //Form name into String
            String pass = request.getParameter("password"); //Form name into String
            String usrName = request.getParameter("username"); //Form name into String
            String mail = request.getParameter("email"); //Form name into String
            int pNum = Integer.parseInt(request.getParameter("phone")); //convert string from text box into integer
            String City = request.getParameter("city"); //Form name into String
            
            int status = 0;
        %>

        <%  try { // If error occured it will show us where the error is
            
                Class.forName("com.mysql.jdbc.Driver");// Load jdbc driver 
               
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CinemaDB", "root", "password"); //Create connection
                
                //Create prepared starement and define query
                
                PreparedStatement ps = con.prepareStatement("INSERT INTO User(FName,Lname,UsrName,Password,Email,PhoneNo,City)values(?,?,?,?,?,?,?)");
                
                ps.setString(1, fName); //Add into value
                ps.setString(2, lName); //Add into value
                ps.setString(3, usrName); //Add into value
                ps.setString(4, pass); //Add into value
                ps.setString(5, mail); //Add into value
                ps.setInt(6, pNum); //Add into value
                ps.setString(7, City); //Add into value
                
                status = ps.executeUpdate();
                con.close();
                if (status > 0) { %>

        <!--jsp:include page="index.jsp" flush="true" /-->

        Data inserted Successfully.

        <%} else {%>
        <jsp:include page="SignupForm.jsp" flush="true" />
        <div id ="errormsg">
            Insertation Failed!!
        </div>
        <%}
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
    </body>
</html>
