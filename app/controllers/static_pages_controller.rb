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

end
