class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end
  def landing_page
    if current_user
      redirect_to problems_path
    end
    render layout: "naked"
  end
end
