class DataLessonsController < ApplicationController
	before_action :set_lessons, only: [:lessons]
	before_action :set_lesson, only: [:show]
	before_action :authenticate_user!
	#Muestra la leccion
	def show

	end
	#Muestra todas las lecciones
	def lessons
	end

	def new
    @lesson = Lesson.new
  end

	def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
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
