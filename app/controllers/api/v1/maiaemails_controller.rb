class Api::V1::MaiaemailsController < ApplicationController
  def create
    @email = Maiaemail.new(email: params[:email])
    if @email.save
      render json: @email
    else
      render json: {errors: @email.errors.full_messages}
    end
  end

  def index
    @emails = Maiaemail.all
    render json: @emails
  end
end
