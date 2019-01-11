class Users::AdministratorsController < ApplicationController
	before_action :set_user, only: [:destroy]

	def index
		@users = User.all
	end

	def new
	    @user = User.new
	end

	def create
    	@user = User.new(user_params)

    	respond_to do |format|
		    if @user.save
		        format.html { redirect_to users_data_path, notice: 'Se creó la cuenta existosamente.' }   
		    else
		        format.html { render :new }
		   end
		end
    end

    def destroy
    	@user.destroy
	    respond_to do |format|
	      format.html { redirect_to users_data_path, notice: 'Se eliminó el usuario.' }
	    end
    end
  
  	private

  	def set_user
      @user = User.find(params[:id])
    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation,:tipo)
    end

end