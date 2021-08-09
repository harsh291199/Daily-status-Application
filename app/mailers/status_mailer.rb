# frozen_string_literal: true

# StatusMailer
class StatusMailer < ApplicationMailer
  def new_status_email
    @status = params[:status]

    mail(to: 'harshsuthar291199@gmail.com', subject: "Training-Status-#{@status.date}")
  end
end
