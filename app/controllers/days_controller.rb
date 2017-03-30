class DaysController < ApplicationController
	def new
	end
  def index
    @days = Day.all
  end

  def show
    @day = Day.find_by(id: params[:id])
    @pitches = Pitch.all.where(day_id: @day.id)
  end

  def create
  	p params
  	puts "*" * 30
  	day = Day.new(days_params)
  	if day.save
  		redirect_to days_path
  	else
  		@errors = day.errors.full_messages
  		render new_day_path
  	end

  end

  private
	def days_params
		params.require(:day).permit(:cohort_name, :pic_url, :round_status, :date, :passing_number, :teams_total)
	end

end

