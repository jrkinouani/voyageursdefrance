class StaticPagesController < ApplicationController
  
  def home
    @cities = City.all.sort_by { |city| - city[:score] }


  end

  def search
    @cities = City.all
      if params[:search]
          @cities = City.search(params[:search]).order("created_at DESC")
      else
       @cities = City.all.order('created_at DESC')
      end
  end

  def about
  end

  def faq
  end

  def covid
    @cities = City.all.sort_by { |city| - city[:covid] }
  end

  def air
    @cities = City.all.sort_by { |city| - city[:air] }
  end

  def restauration
    @cities = City.all.sort_by { |city| - city[:food] }
  end

  def security
    @cities = City.all.sort_by { |city| - city[:security] }
  end

  def meteo
    @cities = City.all.sort_by { |city| - city[:weather] }
  end

  def fun
    @cities = City.all.sort_by { |city| - city[:fun] }

  end

end
