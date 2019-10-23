class ApplicationController < ActionController::Base
  def login(name)
    @current_user = User.find_by_name(name)
  end
end
