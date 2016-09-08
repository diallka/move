<%-- 
    Document   : inscription_conducteur
    Created on : 28 août 2016, 19:46:51
    Author     : pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Création compte chauffeur</title>
        <link href="CSS/label.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div style="float: left; margin-left: 7%; margin-top: 5%">
        <h1>VOUS AVEZ ENTRE<br/><br/>
            25 ET 45 ANS?<br/><br/>
            <i>MOVE</i> A BESOIN <br/><br/>
            DE PARTENAIRES <br/><br/>
            COMME VOUS.</h1>
            <p>
                Gagnez de l'argent en toute simplicité avec <b><i>Move</i></b> ! Vous conduisez quand <br/>
                vous le souhaitez, vous emmenez les passagers à leur destination et vous <br/>
                gagnez de l'argent pour chaque trajet. Devenez chauffeur avec Yaobber, <br/>
                inscrivez-vous maintenant.
            </p>
            <img src="Images/chauffeur_vtc.jpg" alt="chauffeur_vtc"/>
        </div>
        <div style="float: right; margin-right: 7%">
            <form method="post">
            <div style="overflow: hidden;" align="center">
                <a href=""><img src="Images/logo.png" alt="drive commerces"></a>
                <h2>Créer votre compte?</h2>
            </div>
            <br />
               
                <label for="nom">Nom</label>
                <input type="text" name="nom"/> <br/><br/>
                <label for="prenom">Prenom</label>
                <input type="text" name="prenom"/> <br/><br/>
                <label for="email">E-mail</label>
                <input type="text" name="email"/> <br/><br/>
                <label for="genre">Sexe</label>
                <input type="radio" name="genre" value="Mr" checked> M
                <input type="radio" name="genre" value="Mme"> F 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Age</b>
                <input type="number" name="age" min="25" max="45" value="25"/><br/><br/>
                <label for="lat">Lattitude</label>
                <input type="text" name="lat" value="50.639974"/> <br/><br/>
                <label for="long">Longitude</label>
                <input type="text" name="long" value="3.070848"/> <br/><br/>
                <label for="login">Identifiant</label>
                <input type="text" name="login"/><br/><br/>
                <label for="password">Mot de passe</label>
                <input type="password" name="password"/><br/><br/>
                <input type="submit" value="envoyer"/>
                <br/><br/><br/>
                <div style="overflow: hidden;" align="right">
                <a href="connexion_conducteur"><h2>Vous avez déjàcompte?</h2></a>
            </div>
        </form>
       
        </div>
    </body>
</html>
