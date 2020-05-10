class WelcomeController < ApplicationController
		  before_action :authenticate_user!
	before_action :set_welcome, only: [:show, :edit, :update, :destroy]
  def chart
  end
  # GET /stories
  # GET /stories.json
  def index
  	@servicess = Service.all
  end
end



