// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require store/spree_core
//= require store/spree_promo

//= require_tree .
//= require jquery.nivo.slider.pack.js
//require store/product_variant_options
//require store/variant_options
//require spree_variant_options

if($.validator){
	$.validator.messages.required = "Este campo é necessário.";	
}