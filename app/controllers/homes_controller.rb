class HomesController < ApplicationController
def index
	@home = Home.new
end

def new

end

def create
	Home.create(home_params)
	redirect_to root_path
end

private

def home_params
	params.require(:home).permit(:name, :email, :content)
end

end
