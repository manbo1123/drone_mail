class UsersController < ApplicationController
  def edit
    @user = User.find_by(id: current_user.id)
  end

  def update
    if current_user.update(user_params)
      redirect_to mypage_index
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :family_name, :first_name, :family_name_kana, :first_name_kana, :phone_number)
  end
end
