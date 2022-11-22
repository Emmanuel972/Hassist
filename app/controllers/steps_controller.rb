class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    @step.user = current_user
    if @step.save
      redirect_to steps_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @step.update(step_params)
    redirect_to step_path(@step)
  end

  def destroy
    @step.destroy
    redirect_to steps_path, status: :see_other
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:name, :description, :picture)
  end
end
