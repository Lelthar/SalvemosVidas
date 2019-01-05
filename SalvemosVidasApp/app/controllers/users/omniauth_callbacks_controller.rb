class Users::OmniauthCallbacksController < ApplicationController
	
	def facebook
		@user = User.from_omniauth(request.env["omniauth.auth"])

		if @user.persisted? #Revisa si se pudo guardar exitosamente
			@user.remember_me = true #Recuerda el login si el navegador es cerrado
			sign_in_and_redirect @user, event: :authentication
			return
		else

			session["devise.auth"] = request.env["omniauth.auth"]

			render :edit, user: @user
		end
		
	end

	def failure
		redirect_to new_user_session_path, notice: "Error: #{params[:error_message]}. Motivo: #{params[:error_description]}"
	end

	def custom_sign_up
		@user = User.from_omniauth(session["devise.auth"])
		if @user.update(user_params)
			sign_in_and_redirect @user, event: :authentication
		else
			render :edit
		end
	end

	private

	def user_params
		params.require(:user).permit(:email,:username)
	end
end