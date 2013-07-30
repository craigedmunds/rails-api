class UsersController < ApplicationController
  #before_filter :oauth_required
  
  respond_to :html

  def index
    @users = User.all
    @status_code = 0
    @status_desc = "Ok."
	end

  def show
    @user = User.find_by_id(params[:id])
    @status_code = 0
    @status_desc = "Ok."
  end

  def new
	end

	def create
  	@user = User.new(params[:user])
 
  	@user.save
  	redirect_to @user
	end
  
end
