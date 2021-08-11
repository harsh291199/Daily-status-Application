# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  helper_method :flash_messages
  def flash_messages(name)
    name == 'notice' ? 'success' : 'danger'
  end
end
