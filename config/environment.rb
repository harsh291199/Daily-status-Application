# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

status_env_vars = File.join(Rails.root, 'config', 'initializers', 'status_env_vars.rb')
load(status_env_vars) if File.exist?(status_env_vars)

# Initialize the Rails application.
Rails.application.initialize!
