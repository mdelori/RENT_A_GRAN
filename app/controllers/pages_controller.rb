class PagesController < ApplicationController
  def home
    @grannies = Granny.all
  end

  def profile
  end
end
