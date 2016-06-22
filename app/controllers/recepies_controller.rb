class RecepiesController < ApplicationController
  def index
    search_query = params[:search] || 'Chocolate'
    @recipes = Recep.for(search_query)
  end
end
