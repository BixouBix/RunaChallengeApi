class TimeTablesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin, only: [:update, :destroy]
  before_action :set_table, except: [:index, :by_user, :register]
  before_action :set_user, only: :by_user
  
  # GET /time_tables
  def index
    if current_user.is_admin?
      @time_tables = TimeTable.all
    else
      @time_tables = TimeTable.where(user_id: current_user.id)
    end
  end

  # GET /time_tables/:id
  def show
    unless current_user.is_admin? || @time_table.user == current_user
      deny_access
    end
  end
  
  # GET /time_tables/by_user/:user_id
  def by_user
    unless current_user.is_admin? || @user == current_user
      deny_access
    else
      @time_tables = TimeTable.where(user: @user)
      render 'time_tables/index'
    end
  end

  # POST /time_tables
  def register
    @time_table = TimeTable.open.find_by(user: current_user)
    if @time_table
      @time_table.update(checkout: DateTime.now)
    else
      @time_table = TimeTable.create!(user: current_user, checkin: DateTime.now)
    end
    @time_table.set_status
    render 'time_tables/show'
  end

  # PUT/PATCH /time_tables/:id
  def update
    if current_user.is_admin?
      if @time_table.update(time_table_params)
        @time_table.set_status
        render 'time_tables/show'
      else
        head 422
      end
    else
      deny_access
    end
  end
  
  # DELETE /time_tables/:id
  def destroy
    if @time_table.destroy
      json_response({ 'message': 'Time table was deleted successfully' }, 200)
    else
      head 422
    end
  end
  
  private
  def time_table_params
    params.permit(:checkin, :checkout)
  end
  
  def set_table
    begin
      @time_table = TimeTable.find_by!(id: params[:id].to_i)
    rescue ActiveRecord::RecordNotFound
      json_response({'error': 'TimeTable not found'}, 404)
    end
  end
  
  def set_user
    begin
      @user = User.find_by!(id: params[:user_id].to_i)
    rescue ActiveRecord::RecordNotFound
      json_response({'error': 'User not found'}, 404)
    end
  end
end
