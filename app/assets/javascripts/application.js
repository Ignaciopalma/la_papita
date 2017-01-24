// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require qz-tray
//= require rsvp-3.1.0.min
//= require sha-256.min

$(document).ready(function(){	
	var rows = $('.table-row');
    var count = 0;

    while(count < rows.length) {      
      if(count % 2 === 0) {
        rows[count].classList.add('par');
      } else {
        rows[count].classList.add('impar');
      }
      count++;
    }		
});












