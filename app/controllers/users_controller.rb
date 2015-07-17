class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def show
    @user=User.find(params[:id])
  end

  def create
    @user=User.new(user_params)
    if @user.save
      sign_in(@user)
      flash[:success] =  "Реєстрація успішна"
      redirect_to @user
    else
      render "users/new"
    end
  end
  def privilege
    @users=User.all
  end
  def update
    @user=User.find_by id: params[:id]
    if params[:update]
      @user.update_attribute(:privilege, params[:user][:privilege])
      redirect_to users_privilege_path
    else
      @user.delete
      redirect_to users_privilege_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:password, :name, :password_confirmation)
  end
end
