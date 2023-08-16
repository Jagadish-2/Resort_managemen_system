

<!--End of Header-->
<div class="container">
	<?php include'sidebar.php';?>

		<div class="col-xs-12 col-sm-9">
			<!--<div class="jumbotron">-->
				<div class="">
					<div class="panel panel-default">
				
							<div class="panel-body">	
								<div class="col-xs-12 col-sm-12">
									<fieldset>
										<legend><h2 class="text-left">Contact</h2></legend>
										<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
										<div style="overflow:hidden;height:500px;width:600px;">
										<div id="gmap_canvas" style="height:500px;width:600px;"></div>
										<style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
										<a class="google-map-code" href="http://www.trivoo.net/gutscheine/schwab/" id="get-map-data">trivoo</a>
										</div>
										<script type="text/javascript"> function init_map(){var myOptions = {zoom:17,center:new google.maps.LatLng(9.976595986836374,122.60393772617874),mapTypeId: google.maps.MapTypeId.HYBRID};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(9.976595986836374, 122.60393772617874)});infowindow = new google.maps.InfoWindow({content:"<b>Magbanua's Beach Resort</b><br/>Negros South Road, Cauayan<br/>6111 Sipalay City" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
											
									 <br /><small>View 
									<a href="https://www.google.com.ph/maps/place/Magbanua's+Beach+Resort/@9.976593,122.604096,816m/data=!3m1!1e3!4m2!3m1!1s0x33ac39608e79614f:0x3927dc37c279f8ab" style="color:#0000FF;text-align:left">
									My Saved Places</a> in a larger map</small>	
									<address>Magbanua's Beach Resort<br/> 
									Negros South Road<br/> 
									Cauayan<br/> 
									Negros Occidenta</address> 

							</fieldset>		
								</div>
							</div>
						</div>	
				
					
				</div>
		<!--	</div>-->
		</div>
		<!--/span--> 
		<!--Sidebar-->

	</div>
	<!--/row-->
