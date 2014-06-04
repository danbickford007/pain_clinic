class PatientReport 


	def self.harmful_substances
		@patient = Patient.all
											.joins(:patient_history)
											.select("last_name, first_name, drinks_per_day, years_been_drinking, packs_per_day, years_been_smoking, illicit_drugs,
															 allergies, allergy_description")
											.order(:last_name)										
	end


end