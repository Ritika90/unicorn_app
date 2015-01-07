class PrintsController < ApplicationController
  def index

  end

  def send_mail
    @user = params[:email]
    @message = params[:message]
    UserMailer.send_message(@user, @message).deliver
    redirect_to :back
  end
end
