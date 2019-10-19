<%-- 
    Document   : index
    Created on : Dec 12, 2017, 8:54:26 PM
    Author     : amdeselassie
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page </title>
    </head>
    <body>
        <%
            String n = request.getParameter("namme");
            String p = request.getParameter("pass");
            boolean status = false;

            try {
                Class.forName("com.mysql.jdbc.Driver");//load sql driver 
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CinemaDB", "root", "password");

                if (n.equalsIgnoreCase("ADM") && p.equalsIgnoreCase("passwd")) {
                    session.setAttribute("sessionName", n);
                    response.sendRedirect("Admin.jsp");
                    
                }else if ( status == false ){

                    PreparedStatement ps = con.prepareStatement("SELECT * FROM User WHERE UsrName=? AND Password=?");
                    ps.setString(1, n);
                    ps.setString(2, p);
                    ResultSet rs = ps.executeQuery();
                    status = rs.next();

                    if (status == true) {
                        session.setAttribute("sessionName", n);
                        response.sendRedirect("CustomerOption.jsp");
                    } else {
                        response.sendRedirect("LoginForm.jsp");
                    }
                    con.close();
                    
                }else {
                   
                    PreparedStatement ps1 = con.prepareStatement("SELECT * FROM ItOperator WHERE UserName=? AND Password=?");
                    ps1.setString(1, n);
                    ps1.setString(2, p);
                    ResultSet rs = ps1.executeQuery();
                    status = rs.next();

                    if (status == true) {
                        session.setAttribute("sessionEmp", n);
                        response.sendRedirect("ItOperator.jsp");
                    } else {
                        response.sendRedirect("LoginForm.jsp");
                    }
                    con.close();
                    
                }

            } catch (Exception e) {
                System.out.println(e);
            }
        %>

    </body>
</html> 

