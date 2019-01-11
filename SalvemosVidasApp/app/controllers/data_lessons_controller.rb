class DataLessonsController < ApplicationController
	before_action :set_lessons, only: [:lessons]
	before_action :set_lesson, only: [:show]

	#Muestra la leccion
	def show

	end
	#Muestra todas las lecciones
	def lessons
	end

	private									
	  def set_lessons
	  	if (params[:category] == "all")
	  		@lessons = Lesson.all.order("created_at desc")
	  	else
	  		@lessons = Lesson.where(category: params[:category]).order("created_at desc")
	  	end
	  end

	  def set_lesson
	  	@lesson = Lesson.find(params[:id])
	  end

end
