class DataLessonsController < ApplicationController
	before_action :set_lessons, only: [:lesson]

	def lesson
		
	end

	private									
	  def set_lessons
	  	if (params[:category] == "all")
	  		@lessons = Lesson.all
	  	else
	  		@lessons = Lesson.where(category: params[:category])
	  	end
	  end

end
