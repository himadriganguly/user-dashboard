class WelcomeController < ApplicationController
  
  def index
    
  end
  
  def users
    @user = User.all
  end
  
  def user_show
    @user = User.find(params[:id])    
  end
      
  def about
    
  end
  
  def contributors
    
  end
  
  def features
    
  end

  def contact

  end
  
end
