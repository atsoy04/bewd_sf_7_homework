class DeejaysController < ApplicationController
  def index
  	@deejays = Deejay.all
  end

  def show
  	@deejay = Deejay.find(params[:id])
  end

  def new
  	@deejay = Deejay.new
  end

  def create
    @deejay = Deejay.new(deejay_params)

    if @deejay.save
      redirect_to deejays_path
    else
      render :new
    end
  end

  def edit
    @deejay = Deejay.find(params[:id])
  end

  def update
    @deejay = Deejay.find(params[:id])

    if @deejay.update(deejay_params)
      redirect_to @deejay
    else
      render 'edit'
    end
  end

private

  def deejay_params
    params.require(:deejay).permit(:name, :description, :twitter, :email, :soundcloud, :avatar)
  end
end
