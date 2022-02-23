class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]

  def home
    @grannies = Granny.all
  end

  def index
  end

  def profile
  end
end
