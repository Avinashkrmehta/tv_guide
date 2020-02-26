class DashboardController < ApplicationController

  def index
    @channel = Channel.all
  end

  def search
    search = params[:search]
    @channel = Channel.where("name LIKE ?", "%#{search}%")
  end
end
