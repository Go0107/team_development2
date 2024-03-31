class ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:study_time, :study_curriculum, :study_content, :reflection).merge(user_id: current_user&.id)
  end

end
