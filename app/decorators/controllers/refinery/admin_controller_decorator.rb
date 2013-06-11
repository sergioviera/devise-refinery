Refinery::AdminController.class_eval do
 
  before_filter :restrict_refinery_to_refinery_users
  
  private 
  def restrict_refinery_to_refinery_users
    return if current_user && current_user.has_role?(:refinery)
    redirect_to root_path #this user is not a refinery user because they have no refinery roles.
    return false
  end
  
end