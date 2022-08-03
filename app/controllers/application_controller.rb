class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: ENV["ADMIN_USER"],
                                 password: ENV["ADMIN_PASSWORD"],
                                 if: -> { ENV["ADMIN_PASSWORD"].present? }
    helper_method :logged_in?, :current_user

    def current_user
        @current_user ||= Admin.find(session[:admin_id]) if session[:admin_id]
    end
    
    def logged_in?
        !!current_user
    end
    def require_user
        puts logged_in?
        if !logged_in?
            notice = "you must be login in"
            redirect_to login_path
        end
    end
end
