class Admin::ApplicationController < ActionController::Base
  protect_from_forgery

  setting = Setting.find(1)
  name = setting.admin_name
  password = setting.admin_password

  http_basic_authenticate_with :name => name, :password => password

  layout "admin"
end