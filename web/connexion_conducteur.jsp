<%-- 
    Document   : connexion_conducteur
    Created on : 28 août 2016, 20:54:49
    Author     : pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/label.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>Connexion chauffeur!</h1>
         <form method="post">
            <div style="overflow: hidden;" align="center">
            <a href=""><img src="Images/logo.png" alt="drive commerces"></a>
            </div>
            <h2>Se connecter</h2>
            <label for="login">Identifiant</label>
            <input type="text" name="login" id="login"/> <br/><br/>
            <label for="pass">Mot de passe</label>
            <input type="password" name="password" id="password"/> <br/><br/>
            <input type="submit" value="Sign in" /> <br/><br/>
            <div align="right"><a href="inscription_conducteur"><h2>S' inscrire?</h2></a></div>
        </form>
       
    </body>
</html>
