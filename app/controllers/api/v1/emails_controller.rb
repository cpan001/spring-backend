class Api::V1::EmailsController < ApplicationController

  def create
    @email = Email.new(email: params[:email])
    if @email.save
      render json: @email
    else
      render json: {errors: @email.errors.full_messages}
    end
  end

  def index
    @emails = Email.all
    render json: @emails
  end
end
