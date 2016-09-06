
var directionDisplay;

  var directionsService = new google.maps.DirectionsService();
  var map;
  $(function(){
	$('#submit').click(function(){
		calcRoute();
	});
   calcRoute();
	initialize();
  });
  // initialize the Google Map API.
  function initialize() {
  var styleArray = [
    {
      stylers: [
        { visibility: "off" }
      ]
    },
    {
      featureType: "water",
      elementType: "geometry",
      stylers: [
        { visibility: "on" },
        { color: "#000000" },
        { lightness: 17 }
      ]
    },
    {
      featureType: "landscape",
      elementType: "geometry",
      stylers: [
        { visibility: "on" },
        { color: "#000000" },
        { lightness: 20 }
      ]
    },
    {
      featureType: "landscape",
      elementType: "labels",
      stylers: [
        { visibility: "on" },
        { color: "#000000" },
        { lightness: 16 }
      ]
    },
    {
      featureType: "road.highway",
      elementType: "geometry.fill",
      stylers: [
        { visibility: "on" },
        { color: "red" },
        { lightness: 100 }
      ]
    },
    {
      featureType: "road.highway",
      elementType: "labels.text.fill",
      stylers: [
        { visibility: "on" },
        { saturation: 36 },
        { color : "#000000" },
        { lightness : 16 }
      ]
    },
    {
      featureType: "road.highway",
      elementType: "labels.icon",
      stylers: [
        { visibility: "on" }
      ]
    },
    {
      featureType: "road.arterial",
      elementType: "geometry",
      stylers: [
        { visibility: "on" },
        { color : "#000000" },
        { lightness : 16 }
      ]
    },
    {
      featureType: "road.arterial",
      elementType: "labels.text",
      stylers: [
        { visibility: "on" },
        { color: "#ffffff" },
        { lightness: 16 }
      ]
    },
    {
      featureType: "road.arterial",
      elementType: "labels.text.fill",
      stylers: [
        { saturation: 6 },
        { color : "#ffffff" },
        { lightness : 40 }
      ]
    },
    {
      featureType: "road.local",
      elementType: "geometry.fill",
      stylers: [
        { visibility: "on" },
        { color: "#000000" },
        { lightness: 90 }
      ]
    },
    {
      featureType: "administrative.locality",
      elementType: "labels.text",
      stylers: [
        { visibility: "on" },
        { color: "#000000" },
        { lightness: 16 }
      ]
    },
    {
      featureType: "administrative.locality",
      elementType: "labels.text.fill",
      stylers: [
        { visibility: "on" },
        { color: "#ffffff" },
        { lightness: 100 }
      ]
    }
  ];
    directionsDisplay = new google.maps.DirectionsRenderer();
    var Lille = new google.maps.LatLng(50.628122, 3.057975);
    var mapOptions = {
      zoom:15,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      center: Lille,
      styles: styleArray
    }
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    directionsDisplay.setMap(map);
  }

  //Find the Start and End Destination on google Map
  function calcRoute() {
    var start = document.getElementById('start').value;
    var end = document.getElementById('end').value;
    var request = {
        origin:start,
        destination:end,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    
     details =   '<div id="recapitulatif"></div> ';      
                
                $("#details").html(details);
                
    directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
        directionsDisplay.setPanel(document.getElementById("route"));
      }
    });
  }
  
  //---------Calculer trajet----------
calculate = function (km,id) {
    origin = document.getElementById('start').value; // Le point départ
    destination = document.getElementById('end').value; // Le point d'arrivé



    if (origin && destination) {
        var request = {
            origin: start,
            destination: end,
            travelMode: google.maps.DirectionsTravelMode.DRIVING,
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
                var recap = "Distance: " + Math.ceil(response.routes[0].legs[0].distance.value / 1000) + " km</br>"
                        + "Durée: " + Math.floor(response.routes[0].legs[0].duration.value / 3600) + " h " + Math.ceil((response.routes[0].legs[0].duration.value % 3600) / 60) + " min"
                        + "<br>Prix total: " + Math.ceil((response.routes[0].legs[0].distance.value / 1000) * km)+" euro(s)"
                        +'<br><button style="position:absolute;top:350px;left:740px">Reserver</button>'
                        +'<br><button  id="payement" style="position:absolute;top:350px;left:600px" onclick="payer('+id+')">Payer la course</button>'
                            +'<div id ="resultpayer"></div>' ;
              
                $('#recapitulatif').html(recap);

            }
        });
    } //http://code.google.com/intl/fr-FR/apis/maps/documentation/javascript/reference.html#DirectionsRequest
};