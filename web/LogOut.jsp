<%-- 
    Document   : LogOut
    Created on : 14/05/2017, 20:25:11
    Author     : marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%  
    session.invalidate();
    session = request.getSession();
    response.sendRedirect("index.jsp");
%>