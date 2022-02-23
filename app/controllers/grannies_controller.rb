class GranniesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_granny, only: %i[show]

  def index
    @grannies = Granny.all
  end

  def show
  end

  def new
    @granny = Granny.new
  end

  def create
    @granny = Granny.new(granny_params)
    @granny.user = current_user
    if @granny.save!
      redirect_to granny_path(@granny)
    else
      redirect_to new_granny_path
    end
  end

  private

  def set_granny
    @granny = Granny.find(params[:id])
  end

  def granny_params
    params.require(:granny).permit(
      :nickname,
      :first_name,
      :last_name,
      :born_at,
      :description,
      :fun_fact,
      :telephone_number,
      :email,
      :house_number,
      :street,
      :postcode,
      :city,
      :country_name
    )
  end
end
