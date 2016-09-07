
<link rel="stylesheet" href="CSS/jquery-ui-1.8.12.custom.css" type="text/css" /> 
<link href="info.css" rel="stylesheet" type="text/css"/>

<link href="CSS/label.css" rel="stylesheet" type="text/css" />
<div id="panel" style=" margin-left: 7%">
    <h2>Tarifs</h2>
    <h2>
        Estimer le prix d'une<br/> course
    </h2>
    <b>Départ:&nbsp;</b>
    <input type="text" id="start"  placeholder="Départ"/>
    <br/><br/>
    <b>Arrivée:&nbsp;</b>
    <input type="text" id="end"  placeholder="Arrivée"/>

    <input type="image" src="Images/direction_icon.png" id="submit" style="margin-left: -5%; margin-bottom: -0.5%"/>
    <div id="details" ></div>
    <div id="route" class="panel" style="padding: 5px; height: 10%"></div>
</div>

</div>
<div id="map-canvas" style="margin-top: 5%">
 
<!-- Include Javascript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.12.custom.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC9licjrfeAOfNnOejNcEsPe0Mkb17B80o&signed_in=true"></script>
<script type="text/javascript" src="info.js"></script>