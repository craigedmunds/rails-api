class UsersController < ApplicationController
  #before_filter :oauth_required
  
  respond_to :html, :json, :xml

  def index
	  @users = User.all
	end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
	end

	def create
  	@user = User.new(params[:user])
 
  	@user.save
  	redirect_to @user
	end
 
end
