class MealsController < ApplicationController
  def index
    @meals = Meal.includes(:user).all.order(created_at: :desc)
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      redirect_to root_path
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      redirect_to meal_path(@meal.id), notice: 'Success!'
      else
      flash[:alert] = 'Save error!'
      render :edit
      end
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to root_path, notice: 'Success!'
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :image, :materials, :step1, :step1_image, :step2, :step2_image, :step3, :step3_image, :step4, :step4_image, :step5, :step5_image, :protein, :fat, :carbo).merge(user_id: current_user.id)
  end
end

