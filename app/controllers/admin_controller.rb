class AdminController < ApplicationController
  def index
    unless current_user.has_role? :admin
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
