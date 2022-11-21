class StepsController < ApplicationController

  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @Step = Step.new
  end

  def create
    @step = Step.new(step_params)
    @step.user = current_user
    if @step.save
      redirect_to root_path
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
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:name, :description, :picture)
  end
end
