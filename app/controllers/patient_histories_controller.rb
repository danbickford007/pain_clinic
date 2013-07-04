class PatientHistoriesController < ApplicationController
  before_action :set_patient_history, only: [:show, :edit, :update, :destroy]

  # GET /patient_histories
  # GET /patient_histories.json
  def index
    @patient_histories = PatientHistory.all
  end

  # GET /patient_histories/1
  # GET /patient_histories/1.json
  def show
  end

  # GET /patient_histories/new
  def new
  @patient = Patient.new  
  @patient_history = PatientHistory.new
  end

  # GET /patient_histories/1/edit
  def edit
  end

  # POST /patient_histories
  # POST /patient_histories.json
  def create
    @patient_history = PatientHistory.new(patient_history_params)
    respond_to do |format|
      if @patient_history.save
        format.html { redirect_to @patient_history, notice: 'Patient history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patient_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @patient_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_histories/1
  # PATCH/PUT /patient_histories/1.json
  def update
    respond_to do |format|
      if @patient_history.update(patient_history_params)
        format.html { redirect_to @patient_history, notice: 'Patient history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patient_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_histories/1
  # DELETE /patient_histories/1.json
  def destroy
    @patient_history.destroy
    respond_to do |format|
      format.html { redirect_to patient_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_history
      @patient_history = PatientHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_history_params
      params.require(:patient_history).permit(:alcohol, :drinks_per_day, :years_been_drnking, :smoking, :packs_per_day, :years_been_smoking, :illicit_drugs, :religion, :sibling_description, :surgical_history, :medical_history, :allergies, :allergy_description)
    end
end
