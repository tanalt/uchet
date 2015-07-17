class KlientsController < ApplicationController
  def new
    @klient=Klient.new
  end
  def create
    @klient=Klient.new(params.require(:name, :tel))
    if @klient.save
      flash[:success] =  "Клієнт збережений"
      #redirect_to @klient
    else
      render "klients/new"
    end
  end
end
