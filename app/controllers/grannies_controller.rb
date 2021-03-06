class GranniesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_granny, only: %i[show]

  def index
    @grannies = Granny.all
    if params[:query].present?
      @grannies = @grannies.where("city ILIKE ?", "%#{params[:query]}%")
    end
    Skill.all.each do |skill|
      if params[skill.name.delete(' ')].present?
        @grannies = @grannies.includes(:granny_skills).where(granny_skills: { skill_id: params[skill.name.delete(' ')].to_i })
      end
    end
    @markers = @grannies.geocoded.map do |granny|
      { lat: granny.latitude, lng: granny.longitude }
    end
  end

  def show
    @reviews = @granny.reviews
    @age = (((Time.zone.now - @granny.born_at.to_time) / 1.year.seconds).floor)
    average_arr = []
    @granny.reviews.each do |review|
      average_arr << review.rating
    end
    @average = average_arr.sum/average_arr.count.to_f
    @average = @average.round(2)
    @total_ratings = average_arr.count

    @markers = [{ lat: @granny.latitude, lng: @granny.longitude }]

  end

  def new
    @granny = Granny.new
    @skills = Skill.all
  end

  def create
    @granny = Granny.new(granny_params)
    @granny.user = current_user
    if @granny.save!
      params[:granny][:skills].each do |skill_id|
        next if skill_id.empty?

        GrannySkill.create(skill_id: skill_id, granny_id: @granny.id)
      end
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
      :photo,
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
