class ApplicationController < ActionController::Base
  def configure_permitted_parameters
      #新規登録時のストロングパラメータに「username」の追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
