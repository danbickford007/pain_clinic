$("#daily_drinks, #daily_drinks_label, #yearly_drinks, #yearly_drinks_label,#packs_per_day, #packs_per_day_label, #years_been_smoking, #years_been_smoking_label,#allergy_description, .allergy_text").hide();
$('input#patient_patient_history_attributes_alcohol').click(function () {
    $("#daily_drinks, #daily_drinks_label, #yearly_drinks, #yearly_drinks_label").toggle(this.checked);
});
$('input#smoked').click(function(){
    $("#packs_per_day, #packs_per_day_label, #years_been_smoking, #years_been_smoking_label").toggle(this.checked);
});
$('input#allergies').click(function() {
    $('#allergy_description, .allergy_text').toggle(this.checked);
});
	