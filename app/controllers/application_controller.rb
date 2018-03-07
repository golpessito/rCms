class ApplicationController < ActionController::Base
  before_filter :getPageNav, :getJumbotron, :getBlocks
  protect_from_forgery with: :exception


  def getJumbotron
    @jumbotrons=Block.where("position='jumbotron'")
  end

  def getBlocks
    @blocks=Block.where("position='block'").order(order: :asc)
  end

  def getPageNav
    @pagesNav = Page.where("is_published = true && menu_display = true").order(order: :asc)
  end
end
