require 'sinatra/base'
class Helpers

  def self.current_user(session)
    @user = User.find_by(session[:user_id])
    @user
  end

  def is_logged_in?(session)
    @user = User.find_by(session[:user_id])
    @user.id == session[:id] ? true : false
  end
end
