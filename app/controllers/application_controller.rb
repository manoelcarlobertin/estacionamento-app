class ApplicationController < ActionController::Base
  include(Pudit::Controller)
  # before_action :authorize_user!
end
