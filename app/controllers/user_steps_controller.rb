class UserStepsController < ApplicationController
  before_action :set_user_steps, only: [:show, :edit, :update, :destroy]

  def index
    @user_steps = UserSteps.all
  end

  def show
  end

  def new
    @step = Step.find(params[:id])
    @user_steps = UserSteps.new
  end

  def create
    @user_steps = UserSteps.new(params_user_steps)
    @user_steps = UserSteps.save
    redirect_to float_path(user_steps)
  end

  def edit
  end

  def update
    @user_steps.update(params[:user_steps])
  end

  def destroy
    @user_steps.destroy
    redirect_to user_steps_path, status: :see_other
  end

  private

  def params_usersteps
    params.require(:float).permit(:done, :file [])
  end

  def set_user_steps
    @user_steps = UserStep.find(params[:id])
  end
end
