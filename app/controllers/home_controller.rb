class HomeController < ApplicationController
	layout 'site'
	
  def index
  	@notices = Notice.all
  	@materials = Material.all
  end
end
