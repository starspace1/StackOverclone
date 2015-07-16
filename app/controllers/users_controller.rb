class UsersController < ApplicationController

	# include Login
	# before_action  :set_user,  only: [:show, :edit, :update, :destroy]
	# skip_before_action  :authorize, only: [:new, :create]
	# 		# Use if we create session and user login/logout

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
	end

	def show
	end
		
	def edit			# TODO:  edit/update User information? 
	end

	def update
	end
	
	# def destroy			$ TODO:  destroy User information?
	# 	@user.destroy
	# end


	private
		
		def set_user   # Use if we create session and user login/logout
		@user = User.find(params[:id])
		end	

		def user_params		# TODO:  should i put all 3 requirements in params permit?
      params.require(:user).permit(:user_name, :location, :knowledge)
    end
end


