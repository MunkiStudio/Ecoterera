// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
// require twitter/bootstrap
//= require twitter/bootstrap/carousel
// require_tree .

$(document).ready(function(){
	var address = "4 1/2 norte #3457, Talca, Chile";
	var geocoder = new google.maps.Geocoder();
	geocoder.geocode( { "address": address }, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			var myOptions = {
				zoom: 16,
				center: results[0].geometry.location,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

			// Add a marker at the address.
			var marker = new google.maps.Marker({
				map: map,
				position: results[0].geometry.location
			});

		} else {
			try {
				console.error("Geocode was not successful for the following reason: " + status);
			} catch(e) {}
		}
	});
});