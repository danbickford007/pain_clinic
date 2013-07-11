class PatientsController < ApplicationController
 # before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patient = Patient.all
  end

  def show
  end

  def new
  @patient = Patient.new  
  @patient.patient_history
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(params[:id])
    @patient_history = @patient.patient_histories.build(params[:patient_history])
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
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient
      params.require(:patient).permit(:last_name, :first_name, :middle_initial, :email, :dob, :ssn, :height, :weight, :gender, :maritial_status )
    end
end






