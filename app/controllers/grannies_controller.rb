class GranniesController < ApplicationController
  before_action :set_granny, only: %i[show create]

  def index
    @grannies = Granny.all
  end

  def show
    belongs_to :grannie
    validates :content, presence: true
  end

  def new
    @granny = Granny.new
  end

  def create
    @granny.save
  end

  private

  def set_granny
    @granny = Granny.find(params[:id])
  end
end
