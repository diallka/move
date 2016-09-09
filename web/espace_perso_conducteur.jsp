
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Espace Personnel Chauffeur</title>

        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="vendor/morrisjs/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->

            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">


                <!--                    DASHBOARD-->
                <div style="float: right; margin-top: 5%; margin-right: 5%">
                    <form method="post">
                        <select id="disponible" name="disponible" onchange="this.form.submit();">
                            <option>Etat</option>
                            <option value="OUI" >DISPONIBLE</b></option>
                            <option value="NON">INDISPONIBLE</option>
                        </select>
                    </form>
                </div>
                <h2 class="page-header">  <i>Bienvenue</i> ${cond.genre} ${cond.nom} ${cond.prenom}</h2>
                <img src="Images/${cond.photo}.png"/> <br/>
                - Email: ${cond.email} <br/>
                - Age: ${cond.age} ans <br/>

                <a href="accueil">DECONNEXION</a>
                


        </div>

    </div>



    <h3>Historique Commandes</h3>

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
    <button style="margin-left: 70%; color: white; background-color: green"><h3> Total des gains:${cmdPrix} euros</h3></button>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
</body>
</html>