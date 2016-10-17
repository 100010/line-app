class WelcomeController < ApplicationController

  before_action :authenticated_user, only: [:index]
  # before_action :chage_view_for_device!, only: [:index]

  def index
  end

  private def authenticated_user
    if current_user
      redirect_to dashboard_user_path current_user
    end
  end

  private def chage_view_for_device!
    if requiest.ip == "mobile"
    else
    end
  end

end
