class JobsController < ApplicationController
  before_action :authenticate_user!,only: [:new]


  def index
    @jobs = Job.all
  end


  def show
    @job = Job.find(params[:id])
  end



end