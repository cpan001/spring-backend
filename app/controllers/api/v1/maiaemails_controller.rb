class Api::V1::MaiaemailsController < ApplicationController
  def create
    @maiaemail = Maiaemail.new(email: params[:email])
    if @maiaemail.save
      render json: @maiaemail
    else
      render json: {errors: @maiaemail.errors.full_messages}
    end
  end

  def index
    @maiaemails = Maiaemail.all
    render json: @maiaemails
  end
end
