# frozen_string_literal: true

# Status Controller
class StatusController < ApplicationController
  before_action :set_status, only: %i[show edit update destroy]

  def index
    @statuses = Status.all
  end

  def show; end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)

    if @status.save
      redirect_to @status
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @status.update(status_params)
      redirect_to @status
    else
      render 'edit'
    end
  end

  def destroy
    @status.destroy
    redirect_to status_index_path
  end

  private

  def set_status
    @status = Status.find(params[:id])
  end

  def status_params
    params.require(:status).permit(:date, :tasks, :pr_links, :hours)
  end
end
