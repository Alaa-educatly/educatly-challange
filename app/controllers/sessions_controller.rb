class SessionsController < ApplicationController
    
    # GET /login
    def new
    end
    
    # POST /LOGIN
    def create
        @admin = Admin.find_by(email: params[:session][:email].downcase)
        respond_to do |format|
          if @admin && @admin.authenticate(params[:session][:password])
            notice = "You are loged in succesfully"
            session[:admin_id] = @admin.id    
            format.html { redirect_to products_path, notice: "Admin was successfully loggedin." }
          else
            format.html { redirect_to login_path, notice: "Invalid email or password." }
          end
        end
    end

    # DELETE /logout
    def destroy
      respond_to do |format|
        session[:admin_id] = nil
        format.html { redirect_to root_path, notice: "You are loged out succesfully" }
      end
    end   

    private 
        def session_params
            params.require(:session).permit(:email, :password)
        end
end