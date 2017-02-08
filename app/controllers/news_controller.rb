class NewsController < ApplicationController
  layout 'site'
  
  def index
    @notices = Notice.all
  end
end
