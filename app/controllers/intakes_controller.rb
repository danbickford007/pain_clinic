class IntakesController < ApplicationController
  before_action :set_intake, only: [:show, :edit, :update, :destroy]
  
  def search
    patients = Patient.search(params[:ssn], params[:last_name])
    respond_to do |format|
      format.js{ render :js=>"load_patient_matches(#{patients.to_json})" }
    end
  end
  
  def index
    @intakes = Intake.all
  end

  def show

  end


  def new
    @patient = Patient.find(params[:patient_id])
    @intake = Intake.new
    

  end


  def edit
  end


  def create
    @intake = Intake.new(intake_params)
    @intake.create_pain_qualities(params)
    @intake.patient_id = params[:intake][:patient_id]
    p "XXXXXXXXXXXXXXXXXX"
    p @intake.patient.update_attributes(status_id: 1)
    #@patient = Patient.find(params[:patient_id])
    #@patient.update_attributes(:status_id => 4)
    
    respond_to do |format|
      if @intake.save
        format.html { redirect_to @intake, notice: 'Intake was successfully created.' }
        format.json { render action: 'show', status: :created, location: @intake }
      else
        format.html { render action: 'new' }
        format.json { render json: @intake.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @intake.update(intake_params)
        format.html { redirect_to @intake, notice: 'Intake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @intake.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @intake.destroy
    respond_to do |format|
      format.html { redirect_to intakes_url }
      format.json { head :no_content }
    end
  end

  private
    def set_intake
      @intake = Intake.find(params[:id])
    end

    def intake_params
      params.require(:intake).permit(:complaint_1, :complaint_2, :complaint_3, :illness_history, :pain_now, :least_pain_one_week, :worst_pain_one_week, :average_pain_last_week, :pain_duration, :pain_timing, :context_of_pain, :modifying_factors, :signs_and_sympotoms, :general_activity, :mood, :normal_work, :sleep, :enjoyment, :concentration, :interaction_with_others, :current_pain_meds, :patient_id)
    end
end
