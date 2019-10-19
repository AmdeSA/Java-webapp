<%-- 
    Document   : Add
    Created on : Feb 15, 2018, 10:43:56 PM
    Author     : amdeselassie
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String Name = request.getParameter("Title");
            String Discription = request.getParameter("Description");
            int Date = Integer.parseInt(request.getParameter("Date"));
            int Time = Integer.parseInt(request.getParameter("Time"));
            int Rate = Integer.parseInt(request.getParameter("Rate"));
            int Price = Integer.parseInt(request.getParameter("Price"));
            int status = 0;
            int status2 = 0;
        %>

        <%  try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CinemaDB", "root", "password");
                PreparedStatement ps = con.prepareStatement("INSERT INTO MovieList(Title,Rate,Discription,Price)values(?,?,?,?)");
                PreparedStatement ps2 = con.prepareStatement("INSERT INTO MovieDateTime(Date1, Time1)values(?,?)");
                ps.setString(1, Name);
                ps.setInt(2, Rate);
                ps.setString(3, Discription);
                ps.setInt(4, Price);
                ps2.setInt(1, Date);
                ps2.setInt(2, Time);
                status = ps.executeUpdate();
                status2 = ps2.executeUpdate();
                con.close();
                if (status > 0) {
                  response.sendRedirect("ItOperator.jsp"); 
                }
            }catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
