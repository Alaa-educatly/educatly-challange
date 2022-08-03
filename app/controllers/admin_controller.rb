class AdminController < ApplicationController
  before_action :set_admin, only: %i[ show ]

  # GET /admin/1
  def show
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end
end
