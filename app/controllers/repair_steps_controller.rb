class RepairStepsController < ApplicationController
  include Wicked::Wizard
  steps :device, :model, :color, :problem
  # before_action :set_everything, only: [:show, :update]

  def show
    $show =+ 1
    case step
    when :device

    when :model
      byebug
    when :color
      byebug
    when :problem
      byebug
    end
    $booking = Booking.new
    render_wizard

  end

  def update
    $update =+ 1
    unless params[:selecteddevice].nil?
      $selecteddevice = params[:selecteddevice]
    end

    render_wizard $booking
  end

  def create
    render_wizard
  end

  private
  def finish_wizard_path
    booking_path(@booking)
  end

  def booking_params
    params.require(:booking).permit(:device, :model, :color, :problem)
  end


end
