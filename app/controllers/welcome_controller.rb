class WelcomeController < ApplicationController
		  before_action :authenticate_user!
	
  def chart
  end
  # GET /stories
  # GET /stories.json
  def index
  	@servicess = Service.all
  end
end



