module ApplicationHelper
<<<<<<< HEAD
    
    def resource_name
    :user
    end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
=======
>>>>>>> 5b1db0f... intial commit
end
