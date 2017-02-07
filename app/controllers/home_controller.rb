class HomeController < ApplicationController
	layout 'site'
	
  def index
  	@notices = Notice.all
  	@materials = Material.all
  end

  def news
    @notices = Notice.all
  end

  def show_notice
    @notice = Notice.find(params[:id])
  end
end
