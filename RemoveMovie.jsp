<%-- 
    Document   : Remove
    Created on : Feb 17, 2018, 10:58:50 PM
    Author     : amdeselassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int n = Integer.parseInt(request.getParameter("idMovie"));

            int status = 0;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CinemaDB", "root", "password");

                PreparedStatement ps = con.prepareStatement("DELETE FROM MovieList WHERE MovieListId=?");
                ps.setInt(1, n);
                status = ps.executeUpdate();
                con.close();
                if (status > 0) {
                    response.sendRedirect("Admin.jsp");
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
    </body>
</html>
