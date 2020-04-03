class UserController < ApplicationController
  def login

  end

  def login_check
    @user = User.find_by(login_id: params[:login_id])
    # @user = User.find_by(id: 1)

    if @user
      puts "パスワード"
      puts params[:password]
      puts @user.id
      puts @user.password
      if @user.password == params[:password]
        session[:login_id] = @user.id
        redirect_to("/")
      end
    else
      puts "ログインに失敗しました"
      redirect_to("/login")
    end
  end

  def logout
    session[:login_id] = nil
    redirect_to("/login")
  end

  def show
    @user = User.find_by(id:params[:id])
  end

  def edit
    @user = User.find_by(id:params[:id])
  end

  def update
    @user = User.find_by(id:params[:id])

    @user.user_name = params[:user_name]
    @user.login_id = params[:login_id]
    @user.password = params[:password]

    @user.save

    redirect_to("/user/show/#{params[:id]}")

  end

  def destroy
    @user = User.find_by(id:params[:id])
    @user.destroy

    redirect_to("/login")
  end

  def new

  end

  def create
    @user = User.new
    @user.user_name = params[:user_name]
    @user.login_id = params[:login_id]
    @user.password = params[:password]
    @user.save

    redirect_to("/login")
  end
end
