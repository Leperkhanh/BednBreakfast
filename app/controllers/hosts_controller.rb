class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find_by(id: params[:id])
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
      if @host.save
        redirect_to host_path(@host)
      end
  end

  def edit
  end

  def update
  end

  def destroy 

  end

  private 

  def host_params
    params.require(:host).permit(:email, :first_name, :last_name, :phone_number, :bio, :password)
  end
end
