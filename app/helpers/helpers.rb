class Helpers

  def current_user(session)
    @user = User.find_by(session[:user_id])
  end

  def is_logged_in?(session)
    @user = User.find_by(session[:user_id])
    @user.id == session[:id] ? true : false
  end
end
