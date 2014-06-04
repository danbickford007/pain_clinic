(function() {
  window.load_patient_matches = function(patients) {
    var patient, _i, _len, _results;

    if (patients[0] === void 0) {
      return $("#results").html("No Patient Found, Would you like to <a href='/'>create this patient</a>");
    } else {
      $("#results").html('');
      _results = [];
      for (_i = 0, _len = patients.length; _i < _len; _i++) {
        patient = patients[_i];
        _results.push($("#results").append(("<div class='availPatient'><a href='/intakes/new?patient_id=" + patient['id'] + "'>") + patient['first_name'] + "</a></div><br />"));
      }
      return _results;
    }
  };

}).call(this);
