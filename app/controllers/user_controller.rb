class UserController < ApplicationController
  def index
    User.destroy_all
    fetcher = TestClass.new
    fetched_users = fetcher.get_users('')
    fetched_users['data'].each do |fetched_user|
      User.create(fetched_user)
    end
    respond_to do |format|
      format.html 
      format.json { render json: UserDatatable.new(view_context) }
    end
    # @users = User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def add
  end

  def create
  end

  def delete
  end
end
