class PagesController < ApplicationController
  def home
    @works = Work.all
    @categories = Category.all
  end
end
