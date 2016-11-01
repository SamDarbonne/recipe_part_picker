class WelcomeController < ApplicationController
  def home
  	
  end

  def login

  end

  def signup
  	@user = User.new()
  end
end