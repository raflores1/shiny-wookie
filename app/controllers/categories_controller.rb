class CategoriesController < ApplicationController

before_action :set_category, only: [:show, :edit, :update, :destroy]

def index
	@categories = Category.all
end

def new
	@category = Category.new
end

def destroy
end

def show
end

def edit
end

def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end





private

def set_category
	@category = Category.find(params[:id])
end

def category_params
      params.require(:category).permit(:category)
end

end

