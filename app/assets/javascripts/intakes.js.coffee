# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

window.load_patient_matches = (patients) -> 
  if patients[0] == undefined
    $("#results").html("No Patient Found, Would you like to <a href='/'>create this patient</a>")
  else
    $("#results").html('')
    for patient in patients
      $("#results").append("<div class='availPatient'><a href='/intakes/new?patient_id=#{patient['id']}'>"+patient['first_name']+"</a></div><br />")
      
