class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def no_index_no_follow
  	@meta_robots_instructions = "noindex, nofollow"
  end
end
