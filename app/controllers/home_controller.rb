class HomeController < ApplicationController

  def index
    @disks = Disk.all
  end
end
