class ApplicationController < ActionController::Base
  before_filter :getPageNav
  protect_from_forgery with: :exception


  def getPageNav
    @pagesNav = Page.where("is_published = true && menu_display = true").order(order: :asc)
  end
end
