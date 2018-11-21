class AccessController < ApplicationController
  before_action :confirm_logged_in, :only => [:menu]

  def menu
    @subjects = Subject.all
  end

  def login
  end

  def attempt_login
    if params[:username] && params[:password]
      user = AdminUser.where(:username => params[:username]).first
      if user
        authorized_user = user.authenticate(params[:password])
      end
    end
    if authorized_user
      flash[:notice] = "You have successfully logged in"
      session[:user_id] = authorized_user.id
      redirect_to(access_menu_path)
    else
      flash[:notice] = "Your username/password was incorrect"
      render('login')
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "You have successfully been logged out"
    redirect_to(access_login_path)
  end

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "You need to be logged in to access this page"
      redirect_to('/access/login')
    end
  end
end
