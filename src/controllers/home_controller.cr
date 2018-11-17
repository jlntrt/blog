class HomeController < ApplicationController
  def index
    posts = Post.includes("user")
    render("index.slang")
  end
end
