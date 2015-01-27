class UsersController < ApplicationController


  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

      if @user.save
        render :js => "$('#user_email').val('');$('#registration_success').modal('show');setTimeout(function(){$('#registration_success').modal('hide');}, 9000);"
      else
        render :js => "$('#user_email').val('');$('#registration_failed').modal('show')"
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :status)
    end
end
