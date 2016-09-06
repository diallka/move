<%-- 
    Document   : _TEMPLATE
    Created on : 28 août 2016, 21:09:00
    Author     : pro
--%>

<!--ajouter library jstl sinon $.. ne fonctionne pas-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Template Page</title>
       
    </head>
    <body>
        <div class="titre">
         
        </div>
        <div class="menu">
            <c:import url="_MENU.jsp" />
        </div>
        <div class="contenu">
            
        </div>
        <div class="pied">
            
        </div>
    </body>
</html>