class HomeController < ApplicationController
	layout 'site'
	
  def index
  	@notices = Notice.all
  end
end
