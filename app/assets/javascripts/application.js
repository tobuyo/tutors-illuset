// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .


//スクロールによって下のフォームが出現する機能
$(document).ready(function(){
	$(".characters").not(':animated').hover(function(){
		$(this)
		.stop(true, true)
		.animate({top:"3px"}, 80).animate({top:"10px"}, 150) // first jump
		.animate({top:"8px"}, 80).animate({top:"13px"}, 150) // second jump
		.animate({top:"13px"}, 80).animate({top:"20px"}, 150) // the last jump
	});
});
