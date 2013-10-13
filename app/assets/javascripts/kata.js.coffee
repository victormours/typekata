# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
"use strict"
var TypeKata = TypeKata || {};


TypeKata.Kata = (function(){
   var startTime
   var kataInput = "data[bind=kata-input]"

   function bindKataInput() {
     $(kataInput).on("keydown", function(){
      
     }
   }

   function initTimer(){
    startTime = 
   }

  function init(selectors){
    
  }

  return {
    init: init
  }
});

$(function) {
  TypeKata.Kata.init()
}
