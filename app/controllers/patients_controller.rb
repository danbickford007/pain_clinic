class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy,:patient_setup]



  def patient_setup
    @patient_history = @patient.patient_history
    @patients_medical_equipment = @patient.patients_medical_equipment
    @disease = @patient.disease
  end


  def index
    @patient = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])

  end

  def new
  @patient = Patient.new
  @patient.build_patient_history
  @patient.build_patients_medical_equipment
  @patient.build_disease
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.create(patient_params)
    
    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patient }
      else
      format.html { render action: 'new' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_histories/1
  # PATCH/PUT /patient_histories/1.json
  def update

    @patient = Patient.find(params[:id])
    respond_to do |format|
      if @patient.update(patient_history_params)
        format.html { redirect_to @patient, notice: 'Patient history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient/1
  # DELETE /patient/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patient_histories_url }
      format.json { head :no_content }
    end
  end

  private
     #Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
params.require(:patient).permit(:last_name, :first_name, :middle_initial, :email, :dob, :ssn, :height, :weight, :gender, :marital_status,:patient_history_attributes => [:id,:alcohol, :drinks_per_day, :years_been_drinking,:smoking,:packs_per_day, :years_been_smoking, :illicit_drugs, :religon,:sibling_description,:surgical_history,:medical_history,:allergies,:allergy_description,:patient_id,:status_id], :patients_medical_equipment_attributes => [:catheter,:wheelchair,:nebulizer,:glasses,:contacts,:hearing_aid], :disease_attributes=> [:alcohol_abuse, :allergies,:anemia,:arthritis,:asthma,:bladder_infection,:bleeding_tendency,:chicken_pox,:colitis,:gout,:hay_fever,:heart_attack,:hepatitis,:high_blood_pressure,:nervous_breakdown,:radiation_therapy,:rheumatic_fever,:sexually_transmitted_disease,:sickle_cell_anemia,:stomach_ulcers,:suicide_attempt] )
  end
end






