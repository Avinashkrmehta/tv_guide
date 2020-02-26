class DashboardController < ApplicationController

  def index
    @channel = Channel.all
  end
end
