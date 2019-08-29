class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin
  before_action :set_user, except: [:index, :create]
  
  # GET /users
  def index
    @users = User.all
  end
  
  # GET /users/:id
  def show
  end
  
  # POST /users
  def create
    if @user = User.create!(user_params)
      render 'users/show'
    else
      head 422
    end
  end

  # PUT/PATCH /users/:id
  def update
    if @user.update(user_params)
      render 'users/show'
    else
      head 422
    end
  end
  
  # DELETE /users/:id
  def destroy
    if @user.destroy
      json_response({ 'message': 'User was deleted successfully' }, 200)
    else
      head 422
    end
  end
  
  private
  def set_user
    begin
      @user = User.find_by!(id: params[:id].to_i)
    rescue ActiveRecord::RecordNotFound
      json_response({'error': 'User not found'}, 404)
    end
  end
  
  def user_params
    params.permit(:first_name, :last_name, :email, :is_admin, :password)
  end
end
