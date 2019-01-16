class UsuariosController < ApplicationController
	before_action :set_user
	before_action :authenticate_user!
	before_action :authenticate_owner!, only: [:update]

	def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show }
      else
        format.html { render :edit }
        format.json { render json: @user.errors  }
      end
    end
  end

  private 

  	def user_params
      params.require(:user).permit(:username, :email)
    end

  	def set_user
  		@user = User.find(params[:id])
  		@cantidad_lecciones = @user.lessons.count
      @slide = Slide.first
  	end

  	def authenticate_owner!
  		if current_user != @user
  			redirect_to root_path, notice: "No estás autorizado", status: :unauthorized
  		end
  	end
end