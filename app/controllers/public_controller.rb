class PublicController < ApplicationController

  def index
  end

  def step_1
    if GenderOption.count == 0
      GenderOption.create(name: "Woman")
      GenderOption.create(name: "Man")
    end
    @user = User.new
  end

  def step_2
    @user = User.new(step_1_params)
  end

  def step_3
    @user = User.new(step_2_params)
  end

  def step_4
    @user = User.new(step_3_params)
    @user.save
    render "finished"
  end

  private

  def step_1_params
    params.require(:user).permit(:gender)
  end

  def step_2_params
    params.require(:user).permit(:gender, :email, :username, :password)
  end

  def step_3_params
    params.require(:user).permit(:gender, :email, :username, :password, :bio, :wants)
  end

end
