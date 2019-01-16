class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :set_lessons, only: [:category]
  before_action :authenticate_user!

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
  end

  def category
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = current_user.lessons.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to new_slide_path(lesson_id: @lesson.id), notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
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

    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
      @slides = @lesson.slides.reverse
      @path_image1 = []
      @slides.each do |slide|
         @path_image1 << slide.image1.url(:small)
      end
      @path_image2 = []
      @slides.each do |slide|
         @path_image2 << slide.image2.url(:small)
      end
      @path_image3 = []
      @slides.each do |slide|
         @path_image3 << slide.image3.url(:small)
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:name, :description, :category)
    end
end
