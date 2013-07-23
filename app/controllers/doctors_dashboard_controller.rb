class DoctorsDashboardController < ApplicationController
  def index
    @waiting = Patient.all.joins(:status).where("statuses.description = ?", 'waiting')
    @in_process = Patient.all.joins(:status).where("statuses.description = ?", 'In Process')
  end

  def new
  end

  def create
  end
end
