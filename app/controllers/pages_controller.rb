class PagesController < ApplicationController
  def home
    @posts = Blog.all()
    @posts = Skill.all()
  end

  def about
  end

  def contact
  end
end
