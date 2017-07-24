class AdminController < ActionController::Base
  layout 'application'
  def group 
    @groups = Group.all
  end
end