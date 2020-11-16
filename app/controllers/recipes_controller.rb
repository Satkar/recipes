class RecipesController < ApplicationController
  
  before_action :content_delivery_connection
  
  def index
    @recipes = @connection.list_entries('recipe') 
    flash[:notice] = "Service is unavailable at the moment." unless @recipes
  end

  def show
    @recipe = @connection.fetch_entry(params[:id])
    unless @recipe
      flash[:notice] = "Service is unavailable at the moment."
    else
      @fields = @recipe.fields.keys
    end
  end

  private 

  def content_delivery_connection
    @connection = ContentDelivery::Client.new
  end
end