class Admin::SendersController < ApplicationController
  before_action :set_sender, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @senders = Sender.all
    respond_with(@senders)
  end

  def show
    respond_with(@sender)
  end

  def new
    @sender = Sender.new
    respond_with(@sender)
  end

  def edit
  end

  def create
    @sender = Sender.new(sender_params)
    flash[:notice] = 'Sender was successfully created.' if @sender.save
    respond_with(:admin, @sender)
  end

  def update
    flash[:notice] = 'Sender was successfully updated.' if @sender.update(sender_params)
    respond_with(:admin, @sender)
  end

  def destroy
    @sender.destroy
    respond_with(@sender)
  end

  private
    def set_sender
      @sender = Sender.find(params[:id])
    end

    def sender_params
      params.require(:sender).permit(:name, :description)
    end
end
