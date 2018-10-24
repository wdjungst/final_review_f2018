class Api::ContactController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    ContactMailer.delay.info({ 
      email: params[:email],
      name: params[:name],
      phone: params[:phone],
      body: params[:body]
    })
  end
end
