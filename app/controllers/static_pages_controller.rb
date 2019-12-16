class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def search
    if params[:search].blank?  
      @results = []
    else 
      @parameter = params[:search].downcase  
      @results = Item.all.where("lower(name) LIKE :search", search: "%#{@parameter}%") 
    end
  end
end
