class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(
      :user_id,
      :post_id,
      :check_in,
      :check_out,
      :stay_count,
      :peaple_count,
      :room_fee
    ))
    if @reservation.save
      flash[:notice] = "お部屋の予約が完了しました。"
      redirect_to reservations_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
