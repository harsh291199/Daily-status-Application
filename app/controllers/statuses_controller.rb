# frozen_string_literal: true

# Statuses Controller
class StatusesController < ApplicationController
  before_action :set_status, only: %i[show edit update destroy]

  def index
    @statuses = Status.paginate(page: params[:page], per_page: 3)
  end

  def show
    @tasks = @status.tasks
  end

  def new
    @status = Status.new
    @tasks = @status.tasks.build
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      StatusMailer.with(status: @status).new_status_email.deliver_later
      flash[:notice] = 'Status update was created & Mail has sent successfully'
      redirect_to @status
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @status.update(status_params)
      flash[:notice] = 'Status update was updated successfully.'
      redirect_to @status
    else
      render 'edit'
    end
  end

  def destroy
    @status.destroy
    flash[:alert] = 'Status was successfully deleted'
    redirect_to root_path
  end

  private

  def set_status
    @status = Status.find(params[:id])
  end

  def status_params
    params.require(:status).permit(:date, tasks_attributes: %i[id task_name pr_links hours _destroy])
  end
end
