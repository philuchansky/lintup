class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :user_id_is_params_id?, :language_modes

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  #usage: redirect if user tries to edit/delete content/account that doesn't belong to them
  #TODO: refactor into one-argument method to reuse application-wide
  def user_id_is_params_id?
    current_user.id.to_s == params[:id].to_s
  end

  def authorize
    unless logged_in?
      redirect_to new_session_path
    end
  end


  def language_modes
    [
        {language_mode: 'coffeescript', name: 'CoffeeScript'},
        {language_mode: 'css', name: 'CSS'},
        {language_mode: 'django', name: 'Django'},
        {language_mode: 'go', name: 'Go'},
        {language_mode: 'haml', name: 'Haml'},
        {language_mode: 'htmlembedded', name: 'HTML Embedded'},
        {language_mode: 'htmlmixed', name: 'HTML Mixed'},
        {language_mode: 'javascript', name: 'JavaScript'},
        {language_mode: 'perl', name: 'Perl'},
        {language_mode: 'php', name: 'PHP'},
        {language_mode: 'python', name: 'Python'},
        {language_mode: 'ruby', name: 'Ruby'},
        {language_mode: 'sass', name: 'Sass'},
        {language_mode: 'yaml', name: 'YAML'}
    ]
  end

end
