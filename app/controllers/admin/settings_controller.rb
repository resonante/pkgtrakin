class Admin::SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @settings = Setting.all
    respond_with(@settings)
  end

  def show
    respond_with(@setting)
  end

  def new
    @setting = Setting.new
    respond_with(@setting)
  end

  def edit
  end

  def create
    @setting = Setting.new(setting_params)
    flash[:notice] = 'Setting was successfully created.' if @setting.save
    respond_with(:admin, @setting)
  end

  def update
    flash[:notice] = 'Setting was successfully updated.' if @setting.update(setting_params)
    respond_with(:admin, @setting)
  end

  def destroy
    @setting.destroy
    respond_with(@setting)
  end

  private
    def set_setting
      @setting = Setting.find(params[:id])
    end

    def setting_params
      params.require(:setting).permit(:company_name)
    end
end
