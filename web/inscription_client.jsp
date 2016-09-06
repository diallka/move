<%-- 
    Document   : inscription_utilisateur
    Created on : 29 juin 2016, 18:32:33
    Author     : Pro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Siging up</title>
         <link href="CSS/label.css" rel="stylesheet" type="text/css" />
        <link href="CSS/css1.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div style="float: left; margin-left: 5%; margin-top: 5%">
        
            <img  src="Images/img3.jpg" alt="passager"/> <br/>
            <h1>Commandez un Uber </h1> 
            Bienvenue sur Uber, un service qui vous permet<br/>
        de vous déplacer en ville à l'aide d'un seul bouton.<br/>

        Créez votre compte et commandez votre première course <br/>
        en quelques minutes.
        </div>
        <div>

        

        </div>
        <div style="float: right; margin-right: 5%">
            <form method="post">
            <div style="overflow: hidden;" align="center">
                <a href=""><img src="Images/logo.png" alt="drive commerces"></a>
            </div>
            <h2>Inscription</h2>
            <br />
               
                <label for="nom">Nom</label>
                <input type="text" name="nom"/> <br/><br/>
                <label for="prenom">Prenom</label>
                <input type="text" name="prenom"/> <br/><br/>
                <label for="email">E-mail</label>
                <input type="text" name="email"/> <br/><br/>
                <label for="genre">Sexe</label>
                <input type="radio" name="genre" value="Mr" checked> M
                <input type="radio" name="genre" value="Mme"> F<br/><br/>
                <label for="login">Identifiant</label>
                <input type="text" name="login"/><br/><br/>
                <label for="password">Mot de passe</label>
                <input type="password" name="password"/><br/><br/>
                <input type="submit" value="send"/>
                <div align="right"><a href="connexion_client">Se connecter?</a></div>

        </form>
       
        </div>

       
       
    </body>
</html>

