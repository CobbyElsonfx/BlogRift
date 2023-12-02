# ApplicationController.rb
class ApplicationController < ActionController::Base
  def current_user
    # For simplicity, returning the first user from the database.
    # In a real-world scenario, you would implement proper authentication logic.
    @current_user = User.first
  end
end
