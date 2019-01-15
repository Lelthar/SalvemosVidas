class UsuariosController < ApplicationController
	before_action :set_user, only: [:show,:edit,:update]
	before_action :authenticate_user!

	def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
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
  	end
end