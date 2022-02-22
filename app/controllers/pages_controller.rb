class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @grannies = Granny.all
  end

  def profile
  end
end
