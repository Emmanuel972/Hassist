class userstepsController < ApplicationController
  def index
    @usersteps.usersteps=all

  end

def show
 @usersteps = usersteps.find(params[:id])

end

def new
  @usersteps = usersteps.new

end

def create
  @usersteps = usersteps.new(params_usersteps)
	@usersteps = usersteps.save
	redirect_to float_path(usersteps)

end

def params_usersteps
	params.require(:float).permit(:name, :address)
end

end
