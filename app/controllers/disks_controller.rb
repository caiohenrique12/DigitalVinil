class DisksController < ApplicationController
  before_action :set_disk, only: [:show, :edit, :update, :destroy]

  # GET /disks
  # GET /disks.json
  def index
    @disks = Disk.paginate(:page => params[:page], :per_page => 5)
    authorize! :index, Disk
  end

  # GET /disks/1
  # GET /disks/1.json
  def show
  end

  # GET /disks/new
  def new
    @disk = Disk.new
    authorize! :new, @disk
  end

  # GET /disks/1/edit
  def edit
    @disk = Disk.find(params[:id])
    authorize! :edit, @disk
  end

  # POST /disks
  # POST /disks.json
  def create
    @disk = Disk.new(disk_params)
    authorize! :create, @disk

    respond_to do |format|
      if @disk.save
        format.html { redirect_to @disk, notice: 'Disco criado com sucesso.' }
        format.json { render :show, status: :created, location: @disk }
      else
        format.html { render :new }
        format.json { render json: @disk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disks/1
  # PATCH/PUT /disks/1.json
  def update
    @disk = Disk.find(params[:id])
    authorize! :edit, @disk

    respond_to do |format|
      if @disk.update(disk_params)
        format.html { redirect_to @disk, notice: 'Disco editado com sucesso.' }
        format.json { render :show, status: :ok, location: @disk }
      else
        format.html { render :edit }
        format.json { render json: @disk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disks/1
  # DELETE /disks/1.json
  def destroy
    @disk.destroy
    respond_to do |format|
      format.html { redirect_to disks_url, notice: 'Disco excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disk
      @disk = Disk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disk_params
      params.require(:disk).permit(:name, :author, :address, :longitude, :latitude, :image, :price, :available, :recording_year, :state_id)
    end
end
