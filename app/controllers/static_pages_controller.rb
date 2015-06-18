class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  layout 'naked'
  def home
  end
  def landing_page
    if current_user
      redirect_to problems_path
    end
  end
end
