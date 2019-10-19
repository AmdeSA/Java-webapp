<%-- 
    Document   : Logout
    Created on : Feb 20, 2018, 4:45:44 AM
    Author     : amdeselassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.setAttribute("session", null);
          session.setAttribute("sessionMN", null);
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
