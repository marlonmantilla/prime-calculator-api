class PrimeController < ApplicationController
  include Prime
  def calculate
    render json: prime_numbers(params[:number]), status: :ok
  end

end
