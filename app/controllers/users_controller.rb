class UsersController < ApplicationController

  def new
    @user = user_from_params
    render template: "users/new"
    uploader = AvatarUploader.new
  end

  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      redirect_to '/'
    else
      render template: 'users/new'
    end 
  end 

  private

  def user_from_params
    user_params = params[:user] || Hash.new
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    address = user_params.delete(:address)
    phone = user_params.delete(:phone)
    avatar = user_params.delete(:file)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.address = address
      user.phone = phone
      user.avatar = avatar
    end
  end

  # def permit_params
  # params.require(:user).permit(:address, :phone, :email, :password)
  # end
  # def user_params
  # 	byebug
  #   if params[:user] 
  #   	params.require(:user).permit(:username, :email, :password, :address, :phone)
  # 	else 
  # 		Hash.new
  # 	end
  # end

end 