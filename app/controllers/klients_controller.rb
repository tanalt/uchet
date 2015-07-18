class KlientsController < ApplicationController
  def new
    @klient=Klient.new
  end
  def create
    @klient=Klient.new(klient_params)
    if @klient.save
      flash[:success] =  "Клієнт збережений"
      redirect_to @klient
    else
      render "klients/new"
    end
  end
  def show
    @klient=Klient.all
  end
  private

    def klient_params
      params.require(:klient).permit(:fio, :tel, :ikod)
    end
end
