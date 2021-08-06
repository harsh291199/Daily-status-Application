# frozen_string_literal: true

# Status Controller
class StatusesController < ApplicationController
  before_action :set_status, only: %i[show edit update destroy]

  def index
    @statuses = Status.paginate(page: params[:page], per_page: 30)
  end

  def show; end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      flash[:notice] = 'Status update was created successfully.'
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
    redirect_to root_path
  end

  private

  def set_status
    @status = Status.find(params[:id])
  end

  def status_params
    params.require(:status).permit(:date, :tasks, :pr_links, :hours)
  end
end
