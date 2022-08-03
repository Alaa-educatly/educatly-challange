class AdminsController < ApplicationController
  before_action :set_admin, only: %i[ show ]
  before_action :require_user, only: %i[ show ]

  # GET /admin/1
  def show
  end
  
  # GET /admin/new
  def new
    @admin = Admin.new
  end

  # Post /admin
  def create
    @admin = Admin.new(admin_params)
    respond_to do |format|
      if @admin.save
          notice = "Welcome to my the bookstore #{@admin.name}"   
          session[:admin_id] = @admin.id  
          format.html { redirect_to products_path, notice: "Admin was successfully created." }
      else
          format.html { render :new, status: :unprocessable_entity }
      end 
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    def admin_params
      params.require(:admin).permit(:email, :name, :password)
    end
end
