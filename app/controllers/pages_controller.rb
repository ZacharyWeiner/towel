class PagesController < ActionController::Base
  layout 'application'
  def home 
  end

  def my_feed
    render 'pages/feed/home'
  end
end