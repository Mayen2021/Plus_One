class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activities = Activity.all.sort_by{|e| e[:start_date]}.first(3)

  end
end
