class UsersController < ApplicationController
  def index
    TestClass.new.populate_users if !User.any?
    respond_to do |format|
      format.html 
      format.json { render json: UsersDatatable.new(view_context) }
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def add
  end

  def edit
    @user = User.find(params['id'])
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new
    params['user'].permit!
    @user.attributes = params['user']
    respond_to do |format|
      if @user.save
        format.html { redirect_to "/", notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        # redirect_to "/" and return
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params['id'])
    params['user'].permit!
    respond_to do |format|
      if @user.update(params['user'])
        format.html { redirect_to "/", notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
        # redirect_to "/" and return
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def delete
  end
end
