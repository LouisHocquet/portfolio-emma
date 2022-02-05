class PagesController < ApplicationController
  def home
    @works = Work.all
  end
end
