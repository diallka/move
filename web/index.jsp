<%-- 
    Document   : index
    Created on : 30 août 2016, 20:37:39
    Author     : pro
--%>
<!--ajouter library jstl sinon $.. ne fonctionne pas-->
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

        <title>Move me! </title>

        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

        <!-- Theme CSS -->
        <link href="CSS/grayscale.min.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

        <!-- Navigation -->
        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        Menu <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" >
                        <a href="inscription_conducteur"><button type="button" class="btn btn-success ">Devenez chauffeur</button></a>

                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>


                        <li>
                            <a class="page-scroll" href="#chauffeurs">Chauffeurs</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#passagers">Passagers</a>
                        </li>

                        <li><a class="alert-link"  href="connexion">Connexion</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Intro Header -->
        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h1 class="brand-heading">Move Me!</h1>
                            <p class="intro-text">Un clic, et je me déplace librement pour pas cher.</p>
                            <a href="#chauffeurs" class="btn btn-circle page-scroll">
                                <i class="fa fa-angle-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- About Section -->
        <section id="chauffeurs" class="container content-section text-center">
            <div class="row">

                <div class="col-lg-5 col-lg-offset-0" style="text-align: left">

                    <h3>Une activité qui s'adapte à vos besoins
                        Vous êtes votre propre patron et conduisez quand vous le souhaitez</h3>
                    <p style="font-size: 20px">Fonctionnement Une journée au volant Lorsque vous êtes prêt 
                        à prendre la route, ouvrez l'application : vous commencerez 
                        à recevoir des demandes de courses. Nous vous indiquons votre 
                        passager et vous guidons vers le lieu de prise en charge, puis 
                        vers la destination de votre passager. Une fois la course terminée, 
                        nous recherchons une nouvelle commande à proximité. Vous pouvez choisir 
                        de faire une pause ou de terminer votre journée quand vous le souhaitez, 
                        simplement en fermant l'application.</p>




                    <div class="col-lg-5 col-lg-offset-0" style="margin-left: 120%; margin-top: -125%">

                        <img src="Images/uber_chauf.png" />
                    </div>
                </div>
            </div>
        </section>

        <!-- Download Section -->
        <section id="passagers" class="content-section text-center">
            <div class="download-section">
                <div class="container">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h2>Déplacez-vous simplement,
                            en un clic
                            Partout, à tout instant</h2>
                        <p>Des courses à tous les prix
                            En toute occasion</p>
                        <a href="inscription_client" class="btn btn-default btn-lg">Inscrivez vous dès aujourd'hui</a>
                        <br/><br/><br/>
                        <a href="#" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-up animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="container content-section text-center">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Contact Start Bootstrap</h2>
                    <p>Feel free to email us to provide some feedback on our templates, give us suggestions for new templates and themes, or to just say hello!</p>
                    <p><a href="mailto:contact@yaobber.com">contact@yaobber.com</a>
                    </p>
                    <ul class="list-inline banner-social-buttons">
                        <li>
                            <!--                            <a href="" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>-->
                            <i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span>
                        </li>
                        <li>
                            <!--                            <a href="" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>-->
                            <i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span>
                        </li>
                        <li>
                            <!--                            <a href="" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>-->
                            <i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- Map Section -->
        <div id="map"></div>

        <!-- Footer -->
        <footer>
            <div class="container text-center">
                <p>Copyright &copy; </p>
            </div>
        </footer>

        <!-- jQuery -->
        <script src="vendor/jquery/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
 
        <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBC95GpgAzzfx4qDEDw-_G76aMlpwtvoSc&sensor=false"></script>

        <!-- Theme JavaScript -->
        <script src="js/grayscale.min.js"></script>

    </body>

</html>
