class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :introduce)
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params) #user_paramsはPOSTデータをチェックするメソッド
   
  #   if @user.save
  #     flash[:success] = '新しいユーザーを登録しました。'
  #     redirect_to @user
  #   else
  #     flash.now[:danger] = 'ユーザーの登録に失敗しました。'
  #     render :new
  #   end
  # end

  # def show
  #   @user = User.find(params[:id])
  # end

end
