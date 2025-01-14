class UsersController < ApplicationController

  def index
    @users = User.all.order({ :username => :asc })

    render({ :template => "users/index.html.erb" })
  end

  def show
    username = params.fetch("username")
    @user = User.where({ :username => username }).at(0)

    render({ :template => "users/show.html.erb" })
  end

  def feed
    username = params.fetch("username")
    @user = User.where({ :username => username }).at(0)

    render({ :template => "users/feed.html.erb" })
  end


end
