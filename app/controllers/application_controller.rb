class ApplicationController < ActionController::Base
  before_action(:load_current_user)
  before_action(:load_following)
  before_action(:load_followers)
  

  def load_current_user
    the_id = session[:user_id]
    @current_user = User.where({ :id => the_id }).first
  end
  
  def load_following 

  if session.fetch(:user_id) != nil 
    @following = Array.new
    @current_user.following.each do |followee| 
    @following.push(followee.username) 

    @following_table = User.where({ })
    end
  end 
end 

def load_followers
    
  if session.fetch(:user_id) != nil 
    @followers = Array.new
    @current_user.followers.each do |follower| 
    @followers.push(follower.username) 
    end
  end 
end 

  # Uncomment this if you want to force users to sign in before any other actions
  # before_action(:force_user_sign_in)
  

  def force_user_sign_in
    if @current_user == nil
      redirect_to("/user_sign_in", { :notice => "You have to sign in first." })
    end
  end

end
