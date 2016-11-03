class RecipeController < ApplicationController
  def index
  	@recipes = Recipe.all
  end

  def show
  	@recipe = recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    debugger
    redirect_to '/browse'
  end

  def new
    @recipe = Recipe.new
  end

  def add_ingredient
    recipe.ingredients << Ingredient.find_by_id(params[:ingredient_id])
    if recipe.save
      print 'hello'
      redirect_to '/recipes/' + recipe.name.parameterize(separator: '-')
    else 
      redirect_to '/'
    end
  end

  def add_to_cart
  	for ingredient in recipe.ingredients
  		current_user.cart.ingredients << ingredient
  	end
  	redirect_to '/cart/show'
  end

  def edit
    @recipe = recipe
  end

  def update
    new_recipe = Recipe.find_by_id(params[:recipe][:id])
    if new_recipe.update(recipe_params)
      redirect_to ('/recipes/' + recipe_params[:name].parameterize(separator: '-'))
    end
  end
  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :image_url, :user_id)
  end

  def recipe
  	(Recipe.all.select {|recipe| recipe.name.parameterize(separator: '-') == params[:recipe_name]}).first
  end
end
