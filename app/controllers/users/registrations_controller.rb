module Users
  class RegistrationsController < Devise::RegistrationsController
    protected
    def build_resource(hash=nil)
      return super unless params[:action] == 'create'
      role_type = params[:user][:role]
      raise InvalidRoleType.new unless role_type.in? User::ROLES
      user = super
      user.role = role_type.camelize.constantize.new
      user
    end
  end
end