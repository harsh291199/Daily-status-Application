# frozen_string_literal: true

# Application Mailer
class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.smtp_settings[:user_name]
  layout 'mailer'
end
