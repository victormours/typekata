var TypeKata = TypeKata || {};

TypeKata.Kata = (function(){
  var startTime = null
  var kataInput = "[data-bind=kata-input]"
  var wpmDisplay = "[data-bind=wpm-display]"

  function bindKataInput(){
    $(kataInput).on("keyup", function(){
      initTimer()
      updateWPM()
      validateKata()
    })
  }

  function validateKata() {
    if ($('#kata-content').text() === $('#kata-input').val()) {
      $('.alert-success').removeClass('hide')
      $('.alert-error').addClass('hide')
    } else {
      $('.alert-error').removeClass('hide')
      $('.alert-success').addClass('hide')
    }
  }

  function initTimer(){
    if(startTime == null){
      startTime = currentTime()
    }
  }

  function updateWPM(){
    wpm = computeWPM(characterCount(), startTime, currentTime())
    $(wpmDisplay).html(wpm)
  }

  function currentTime(){
    return new Date().getTime()
  }

  function characterCount(){
   return $(kataInput)[0].value.length 
  }

  function computeWPM(characterCount, startTime, currentTime){
    var words = characterCount / 5
    var minutes = (currentTime - startTime)/ (60 * 1000)
    return Math.round(words/minutes)
  }

  function init(){
    bindKataInput()
  }

  return {
    init: init
  }
})()

$(function() {
  TypeKata.Kata.init()
})
