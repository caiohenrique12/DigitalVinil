class HomeController < ApplicationController

  def index
    @disks = Disk.paginate(:page => params[:page], :per_page => 6)
  end
end
