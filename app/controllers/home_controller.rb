class HomeController < ApplicationController
  def index
    @posts = Post.all

    @featured_post = Post.random_post

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
end
