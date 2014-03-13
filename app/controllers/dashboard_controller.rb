class DashboardController < ApplicationController
  
  before_action :authenticate_user!
    
  def index
    @body_class="skin-blue"
  end
  
  def profile
    @body_class="skin-blue"
    @user = User.find(current_user.id)
  end
    
  def update
    
    @user = User.find(current_user.id)   
      
    if user_params[:password].blank?
      user_params.delete(:password)
      user_params.delete(:password_confirmation)
    end

    # https://github.com/plataformatec/devise/wiki/How-To%3a-Allow-users-to-edit-their-account-without-providing-a-password
    successfully_updated = if needs_password?(user_params)
                             @user.update_attributes(user_params)
                               #flash[:notice] = "Successfully updated User." 
                             #else                              
                               #@user.errors.each do |key, msg|
                                 #@test = {key => msg}
                               #end                               
                             #end
                             #flash[:notice] = @test.html_safe 
                             #flash[:error] = @user                                                    
                             #sign_in @user, :bypass => true                                     
                             #redirect_to dashboard_profile_path
                           else
                             @user.update_without_password(user_params)
                             #flash[:notice] = "Successfully updated User1."
                             #sign_in @user, :bypass => true
                             #redirect_to dashboard_profile_path
                           end

    respond_to do |format|
      if successfully_updated
        session[:update_success] = 'Successfully updated profile.'
        format.html { redirect_to dashboard_profile_path }
        #format.json { head :no_content }
      else      
        @user.errors.delete(:avatar)   
        session[:update_errors] = @user.errors.full_messages        
        format.html { redirect_to dashboard_profile_path }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  private
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end

  # https://github.com/plataformatec/devise/wiki/How-To%3a-Allow-users-to-edit-their-account-without-providing-a-password
  def needs_password?(params)
    params[:password].present?
  end
  
end
