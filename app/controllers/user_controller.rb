class UserController < ApplicationController
  def show
    @user = (User.all.select {|user| user.username.parameterize(separator: '-') == params[:username]}).first
    if (@user && !@user.chef) || !@user
      redirect_to '/'
    end
  end

  def create
  	user = User.new(user_params)
    parameterized_name = user_params[:username].parameterize(separator: '-')
    user.param_name = parameterized_name
    user.cart = Cart.create()
  	if user.save
  		session[:user_id] = user.id
  		redirect_to '/'
  	else
  		redirect_to '/signup'
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
