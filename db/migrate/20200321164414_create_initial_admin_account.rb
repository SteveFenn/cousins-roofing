class CreateInitialAdminAccount < ActiveRecord::Migration[6.0]
  class Admin < ActiveRecord::Base
    devise :database_authenticatable, :recoverable, :rememberable, :validatable
  end

  def change
    Admin.create!(
      email: Rails.application.credentials.dig(:account, :email),
      password: Rails.application.credentials.dig(:account, :password)
    )
  end
end
