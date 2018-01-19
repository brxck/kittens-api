class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]

  def index
    @kittens = Kitten.all
  end

  def show
  end

  def new
    @kitten = Kitten.new
  end

  def edit
  end

  def create
    @kitten = Kitten.create(kitten_params)
    if @kitten.save
      flash[:success] = "Kitten created!"
      redirect_to @kitten
    else
      flash.now[:danger] = "Kitten couldn't be created."
      render :new
    end
  end

  def update
    if @kitten.update_attributes(kitten_params)
      flash[:success] = "Kitten updated!"
      redirect_to @kitten
    else
      flash.now[:danger] = "Kitten couldn't be updated."
      render :edit
    end
  end

  def destroy
    @kitten.destroy
    flash[:success] = "Kitten... destroyed?!"
    redirect_to :index
  end

  private

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
