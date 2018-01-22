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
end
