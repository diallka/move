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
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
                table
                {
                    width: 40%;
                }

                table td
                {
                    border: 1px solid;
                }

                table.fixed
                {
                    table-layout:fixed;
                }

                table.auto
                {
                    table-layout:auto;
                }
            </style>
    </head>
    <body >

        <div id="title">  
            <div style="float: right">
                - Age: ${clt.age} &nbsp;<br/>
                - E-mail: ${clt.email} &nbsp;<br/>
                - ${clt.date_inscription} &nbsp;<br/>
            </div>
            <h2>Espace personnel Client</h2> <br/>
            <h5>Bonjour ${clt.genre} ${clt.nom}</h5>
            <a href="accueil">Déconnexion</a>
            <br/>
        </div>

        <div id="map" > </div><br><br>
        
       
<div id="historique">
           
             
           
        </div>

        <div id="details">
             <div id="reponse" >${reponse}</div>

        </div><br><br>

        <!-- <div id="panel" style="position: absolute;top: 750px;left: 920px;"></div>-->
       
    <center><h1>Mon historique de commandes</h1></center>
        <table class="table table small">
                <th>Date</th>
                <th>Chauffeur</th>
                <th>Prix</th>
                <c:forEach items="${cmd}" var="cd">
                <tr>
                    <td class="col-sm-3">${cd.date}</td>
                    <td class="col-sm-3">${cd.conducteur.nom} ${cd.conducteur.prenom}</td>
                    <td class="col-sm-3">${cd.prix}</td>
                  </tr>
                </c:forEach>
            </table>

        <script src="app.js"></script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBC95GpgAzzfx4qDEDw-_G76aMlpwtvoSc&callback=initMap">
        </script>

        <link rel="stylesheet" href="CSS/css1.css" />
        <script src="jquery-3.1.0.min.js"></script>


    </body>


</html>