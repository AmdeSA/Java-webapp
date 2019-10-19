<%-- 
    Document   : AddEmployeeDB
    Created on : May 20, 2019, 8:38:08 AM
    Author     : amdeselassie
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            String List = request.getParameter("List");
            String FirstName = request.getParameter("FirstName");
            String LastName = request.getParameter("LastName");
            String UserName = request.getParameter("UserName");
            String password = request.getParameter("password");
            int Telephon = Integer.parseInt(request.getParameter("Telephon"));
            int date = Integer.parseInt(request.getParameter("Date"));

            //SimpleDateFormat d = new SimpleDateFormat("dd/MM/yyyy");
            int status = 0;
            try {

                Class.forName("com.jdbc.myysql.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CinemaDB", "root", "password");

                if (List == "It operator") {
                    PreparedStatement ps = con.prepareStatement("INSERT INTO ItOperator(Fname, Lname, UserName, Password, Tele, StartDate) values (?,?,?,?,?,?)");
                    ps.setString(1, FirstName);
                    ps.setString(2, LastName);
                    ps.setString(3, UserName);
                    ps.setString(4, password);
                    ps.setInt(5, Telephon);
                    ps.setInt(6, date);

                    status = ps.executeUpdate();
                    con.close();
                    if (status > 0) {
                        response.sendRedirect("index.jsp");
                    }

                } else if (List == "Ticket Taller") {
                    PreparedStatement ps = con.prepareStatement("INSERT INTO Teller(Fname, Lname, UserName, Password, Tele, StartDate) values (?,?,?,?,?,?)");
                    ps.setString(1, FirstName);
                    ps.setString(2, LastName);
                    ps.setString(3, UserName);
                    ps.setString(4, password);
                    ps.setInt(5, Telephon);
                    ps.setInt(6, date);

                    status = ps.executeUpdate();
                    con.close();
                    if (status > 0) {
                        response.sendRedirect("index.jsp");
                    }

                } 

            } catch (Exception e) {
            }

            System.out.print(List);
        %>
    </body>
</html>
