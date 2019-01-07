class Users::RegistrationsController < Devise::RegistrationsController
    def new
      super
    end

    def create
      # add custom create logic here
      @user = User.new(sign_up_params)

      @user.tipo = "normal"

      puts "usuario nuevo: ", @user.to_json

	    respond_to do |format|
	      if @user.save
	        format.html { redirect_to root_path, notice: 'Se creó existosamente la cuenta.' }
	      else
	        format.html { render :new }
	      end
	    end
    end
  
    def update
      super
    end

    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_up_params
      puts "Estos son los paremetros: "
      puts params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end 