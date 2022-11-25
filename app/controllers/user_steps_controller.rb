class UserStepsController < ApplicationController
  before_action :set_user_step, only: %i[show edit update destroy]
  def index
    @user_steps = UserSteps.all
  end

  def show
  end

  def new
    @step = Step.find(params[:step_id])
    @user_step = UserStep.new
  end

  def create
    @step = Step.find(params[:step_id])
    @user_step = UserStep.new
    @user_step.step = @step
    @user_step.user = current_user
    if @user_step.save
      redirect_to step_path(@step), notice: 'Ca a fonctionné'
    else
      redirect_to step_path(@step), alert: "Ca n'a pas fonctionné: #{@user_step.errors.full_messages.join(', ')}"
    end
  end

  def edit
  end

  def update
    if @user_step.update(user_step_params)
      redirect_to step_path(@user_step.step), notice: 'Ca a fonctionné'
    else
      redirect_to step_path(@user_step.step), alert: "Ca n'a pas fonctionné: #{@user_step.errors.full_messages.join(', ')}"
    end
  end

  def destroy
    @user_step.destroy
    redirect_to user_steps_path, status: :see_other
  end

  private

  def user_step_params
    params.require(:user_step).permit(:done, files: [])
  end

  def set_user_step
    @user_step = UserStep.find(params[:id])
  end
end
