class PinsController < ApplicationController
  def index
    @pins = Pin.all.order("created_at DESC")
  end

  def show
    @pin = Pin.find params[:id]
  end

  def new
    # Builds pin from the current user, so when a user makes a pin, the pin will have its user_id automatically
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build pin_params
    if @pin.save
      flash.notice = "New Pin, #{@pin.title}, Created!"
      redirect_to @pin
    else
      render new_pin_path
    end
  end

  def edit
    @pin = Pin.find params[:id]
  end

  def update
    @pin = Pin.find params[:id]
    if @pin.update pin_params
      flash.notice = "#{@pin.title} Updated!"
      redirect_to @pin
    else
      render edit_pin_path
    end
  end

  def destroy
    @pin = Pin.find params[:id]
    @pin.destroy
    flash.notice = "#{@pin.title} Deleted!"
    redirect_to root_path
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :description)
  end
end
