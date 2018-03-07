class HomeController < ApplicationController
  def show
    @pages=Page.where('featured=true').order(order: :asc)
  end
end
