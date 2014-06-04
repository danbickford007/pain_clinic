class PatientReportsController < ApplicationController

	def index
		@patient_substances = PatientReport.harmful_substances
	end

end