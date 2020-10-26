class UsersController < ApplicationController
  def user
    @author = User.find(params[:user])
  end
  
end

