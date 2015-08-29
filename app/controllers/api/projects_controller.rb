class Api::ProjectsController < ApplicationController
  before_filter :check_auth

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def check_auth
    authenticate_or_request_with_http_basic do |username, password|
      resource = User.find_by_email(username)
      if resource && resource.valid_password?(password)
        sign_in :user, resource
      end
    end
  end
end
