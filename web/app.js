




var map;
var details;
var details2 = "";
var km;
var id;
function initMap() {
    details = "";

    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 50.6075138, lng: 3.1546705},
        zoom: 11
    });


    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        document.getElementById("position").innerHTML = "La geolocation n'est pas supportée par votre navigateur.";
    }
    ;


    function showPosition(position) {
        var marker = new google.maps.Marker({
            position: {lat: position.coords.latitude, lng: position.coords.longitude},
            map: map,
            title: 'moi',
            icon: 'Images/House.png'
        });
        var infowindow = new google.maps.InfoWindow({
            content: "Ma position"
        });
        marker.addListener('click', function () {
            infowindow.open(map, marker);
        });
    }


    $.ajax({
        method: "POST",
        url: "RecupCondServlet"
    })
            .done(function (msg) {
                boucle(msg);
            });





    function boucle(data)
    {
        var objData = JSON.parse(data);

        $.each(objData, function (index, value) {
            var addMarker = new google.maps.Marker({
                position: {lat: value.position_latitude, lng: value.position_longitude},
                map: map,
                title: '',
                icon: 'Images/car.png'
            });

            var infowindow = new google.maps.InfoWindow({
                content:
                        '<div style="border:1px solid orange;display:inline-block;background-color:orange"><img src="Images/' + value.photo + '.png" alt="" /></div><br>'
                        + "Nom:<span style='color:#31B404'> " + value.nom + "</span>  Prenom: <span style='color:#31B404'>" + value.prenom + "</span><br>"
                        + '<form method="get" action="#" onsubmit="detailler(' + value.id + ')" >'
                        + '</br><input type="submit" value="selectionner" style="background-color:#E1F5A9">'
                        + '</form>'
            });

            addMarker.addListener('mouseover', function () {
                infowindow.open(map, addMarker);
            });


            details = details + '<div style="border:1px solid orange;display:inline-block;background-color:orange"><img src="Images/' + value.photo + '.png" alt="" /></div><br>'
                    + "Nom:<span style='color:#31B404'> " + value.nom + "</span>  Prenom: <span style='color:#31B404'>" + value.prenom + "</span><br>"
                    + " Age:<span style='color:red'> " + value.age + " ans </span> Date d'inscription:<span style='color:#31B404'> "
                    + new Date(value.date_inscription).getDate() + "/" + (new Date(value.date_inscription).getMonth() + 1) + "/"
                    + new Date(value.date_inscription).getFullYear() + "</span><br>"
                    + " Auto: <span style='color:orange'> " + value.marque_auto + " " + value.modele + " </span>" + " Places disponibles: " + value.nb_places_dispo
                    + "</br>Note: <span style='color:green'> " + parseInt(value.total_notation) / parseInt(value.nb_notes) + "/5 </span> "
                    + " </br>Prix/Km: " + value.prix_km + " euros"
                    + '</br><hr>';



        });

        $("#details").html(details);

    }



}




//---------------Un Conducteur----------

function detailler(id) {
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 50.6075138, lng: 3.1546705},
        zoom: 13
    });


    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition2);
    } else {
        document.getElementById("position").innerHTML = "La geolocation n'est pas supportée par votre navigateur.";
    }
    ;


    function showPosition2(position) {
        $("#details").empty();
        var marker = new google.maps.Marker({
            position: {lat: position.coords.latitude, lng: position.coords.longitude},
            map: map,
            title: 'moi',
            icon: 'Images/House.png'
        });
        var infowindow = new google.maps.InfoWindow({
            content: "Ma position"
        });
        marker.addListener('click', function () {
            infowindow.open(map, marker);
        });
    }


    $.ajax({
        method: "POST",
        url: "RecupUnCondServlet?id=" + id

    })
            .done(function (msg) {
                boucle2(msg);
            });




    function boucle2(data2)
    {
        var objData2 = JSON.parse(data2);


        var addMarker2 = new google.maps.Marker({
            position: {lat: objData2.position_latitude, lng: objData2.position_longitude},
            map: map,
            title: '',
            icon: 'Images/car.png'
        });

        var infowindow = new google.maps.InfoWindow({
            content: '<div style="border:1px solid orange;display:inline-block;background-color:orange"><img src="Images/' + objData2.photo + '.png" alt="" /></div><br>'
                    + "Nom:<span style='color:#31B404'> " + objData2.nom + "</span>  Prenom: <span style='color:#31B404'>" + objData2.prenom + "</span><br>"

        });

        addMarker2.addListener('mouseover', function () {
            infowindow.open(map, addMarker2);
        });



        details2 = '<div style="border:1px solid orange;display:inline-block;background-color:orange"><img src="Images/' + objData2.photo + '.png" alt="" />'
                + '<button onclick="initMap()" style="position:absolute;top:20px;left:670px">Tous les conducteurs</button></div><br>'
                + "Nom:<span style='color:#31B404'> " + objData2.nom + "</span>  Prenom: <span style='color:#31B404'>" + objData2.prenom + "</span><br>"
                + " Age:<span style='color:red'> " + objData2.age + " ans </span> Date d'inscription:<span style='color:#31B404'> "
                + new Date(objData2.date_inscription).getDate() + "/" + (new Date(objData2.date_inscription).getMonth() + 1) + "/"
                + new Date(objData2.date_inscription).getFullYear() + "</span><br>"
                + " Auto: <span style='color:orange'> " + objData2.marque_auto + " " + objData2.modele + " </span>" + " Places disponibles: " + objData2.nb_places_dispo
                + "</br>Note: <span style='color:green'> " + parseInt(objData2.total_notation) / parseInt(objData2.nb_notes) + "/5 </span> "
                + " </br>Prix/Km: " + objData2.prix_km + " euros"
                + '</br><form action="" method="get" name="direction" id="direction"  >'
                + '<br><label>Point de départ :</label>'
                + '<input type="text" name="origin" id="origin">'
                + '<br><br><label>Destination :</label>'
                + '<input type="text" name="destination" id="destination">'
                + '<br><br><input type="button" value="Calculer l\'itinéraire" onclick="calculate('+objData2.prix_km+','+objData2.id+')">'
                + '</form><br><hr>'
                + '<br><br><div id="recapitulatif"></div>'
                + '<br><br><div id="panel"></div>'
               
        ;

        $("#details").html(details2);

        direction = new google.maps.DirectionsRenderer({
            map: map,
            panel: document.getElementById('panel')
        });


    }


}
//Recuper client **************************************
//   $.ajax({
//        method: "POST",
//        url: "reuperer_client?id=" + idClient
//
//    })
//            .done(function (msg) {
//                maFonction(msg);
//            });
//    function maFonction(data)
//    {
//        var myData = JSON.parse(data);
//
//    }

//Fin recuperer client*********************************
//---------Calculer trajet----------
calculate = function (km, id) {
    origin = document.getElementById('origin').value; // Le point départ
    destination = document.getElementById('destination').value; // Le point d'arrivé

    if (origin && destination) {
        var request = {
            origin: origin,
            destination: destination,
            travelMode: google.maps.TravelMode.DRIVING,
            drivingOptions: {
                departureTime: new Date(Date.now()),
                trafficModel: "optimistic"
            },
            unitSystem: google.maps.UnitSystem.METRIC
        };

        var directionsService = new google.maps.DirectionsService(); // Service de calcul d'itinéraire
        directionsService.route(request, function (response, status) { // Envoie de la requête pour calculer le parcours
            if (status == google.maps.DirectionsStatus.OK) {
                direction.setDirections(response);
                var recap = "Distance: " + Math.ceil(response.routes[0].legs[0].distance.value / 1000) + " km<br />"
                        + "Durée: " + Math.floor(response.routes[0].legs[0].duration.value / 3600) + " h " + Math.ceil((response.routes[0].legs[0].duration.value % 3600) / 60) + " min"
                        + "<br />Prix total: " + Math.ceil((response.routes[0].legs[0].distance.value / 1000) * km)+" euro(s)"
                        + '<br /><button onclick="reserver()">Reserver</button>'
                        + '<br /><button id="payement" onclick="payer('+ id +')">Payer la course</button>'
                        + '<div id="resultpayer"></div>';
                        
                
                $('#recapitulatif').html(recap);

            }
        });
    } //http://code.google.com/intl/fr-FR/apis/maps/documentation/javascript/reference.html#DirectionsRequest
};



function effacer() {
    $("#details").empty();
}

//Reservation************
//function reserver(idClient){
//    $.ajax({
//        method: "POST",
//        url: "mettre_en_session_reservation?id="+idClient ,
//         success: function (data) {
//           
//        },
//
//        // La fonction à appeler si la requête n'a pas abouti
//        error: function() {
//          
//        }
//    });
//}
//Fin reservation********

/****PAYEMENT*****/

function payer(id){

 // Au clic sur le bouton #search je lance la fonction
//$('#payement').on('click', function(){
    
   
    // J'initialise le variable box
    var box = $('#resultpayer');

    // Je définis ma requête ajax
    $.ajax({
        
        //Methode Post
        method: "POST",

        // Adresse à laquelle la requête est envoyée
        //url: "payer_conducteur?id="+id ,
        url: "payer_conducteur?id="+id ,
//         url: "payer_conducteur" ,
//          data: '{"id": "' + id + '", "destination": "' + destination +'"}',
//         data: {
//             id : "id",
//             destination: "destination"
//         },
        // Le délai maximun en millisecondes de traitement de la demande
       
        //timeout: 4000,
        // La fonction à apeller si la requête aboutie
        success: function (data) {
            // Je charge les données dans box
            
            
            box.html(data+"Payement validé");
        },

        // La fonction à appeler si la requête n'a pas abouti
        error: function() {
            // J'affiche un message d'erreur
            box.html("Désolé, Payement refusé.");
        }

    });

//});
}