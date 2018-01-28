class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
    # その行の操作をしている時に止まる。その瞬間にどんな状態かわかる
  end

  def new
    #debugger
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
