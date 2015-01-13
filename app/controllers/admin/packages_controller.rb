class Admin::PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @packages = Package.all
    respond_with(@packages)
  end

  def show
    @statuses = @package.statuses.order(date: :desc)
    respond_with(@package)
  end

  def new
    @package = Package.new
    @users = User.all
    @senders = Sender.all
    respond_with(@package)
  end

  def edit
    @statuses = @package.statuses.order(date: :desc)
    @senders = Sender.all
    @users = User.all
    @status = Status.new
  end

  def create
    @package = Package.new(package_params)
    if @package.save
      Status.create(package_id: @package.id, date: @package.date_received, status: 'Received / Recibido', comments: 'No Comments')
      flash[:notice] = 'Package was successfully created.'
    else
      @users = User.all
      @senders = Sender.all  
    end
    respond_with(:admin, @package)
  end

  def update
    flash[:notice] = 'Package was successfully updated.' if @package.update(package_params)
    @users = User.all
    @senders = Sender.all     
    respond_with(:admin, @package)
  end

  def destroy
    @package.destroy
    respond_with(@package)
  end

  private
    def set_package
      @package = Package.find(params[:id])
    end

    def package_params
      params.require(:package).permit(:reference, :track, :date_received, :height, :width, :length, :weight, :description, :user_id, :sender_id)
    end
end
