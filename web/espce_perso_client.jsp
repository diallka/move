<%-- 
    Document   : espce_personnel
    Created on : 26 août 2016, 16:15:50
    Author     : pro
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

      
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Page d'accueil</title>
    </head>
    <body >
        <div id="title">  
            <div style="float: right">
                - ${clt.email} &nbsp;<br/>
                - ${clt.date_inscription} &nbsp;<br/>
            </div>
              <h2>Espace personnel Client</h2>
        Bonjour ${clt.genre} ${clt.nom}<br/>
        <a href="accueil">Déconnexion</a>
        <br/>
        </div>
        
        <div id="map" > </div><br><br>
        
            
        
        <div id="historique">
            <h1>Mon historique de commande</h1>
            - Date: <br/>
            - Details de la commande <br/>
        </div>
            
        <div id="details">
        
        
        </div><br><br>
        
       <!-- <div id="panel" style="position: absolute;top: 750px;left: 920px;"></div>-->
        <div id="reponse" >${reponse}</div>
        


        <script src="app.js"></script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBC95GpgAzzfx4qDEDw-_G76aMlpwtvoSc&callback=initMap">
        </script>
        
        <link rel="stylesheet" href="CSS/css1.css" />
        <script src="jquery-3.1.0.min.js"></script>
    </body>


</html>