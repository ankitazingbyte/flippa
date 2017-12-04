class AmezonsController < ApplicationController
	def index
    @amezons = Amezon.all
  end
 
  def show
    @amezon = Amezon.find(params[:id])
  end
 
  def new
    @amezon = Amezon.new
  end
 
  def edit
    @amezon = Amezon.find(params[:id])
  end
 
  def create
    @amezon = Amezon.new(amezon_params)
 
    if @amezon.save
      redirect_to @amezon
    else
      render 'new'
    end
  end
 
  def update
    @amezon = Amezon.find(params[:id])
 
    if @amezon.update(article_params)
      redirect_to @amezon
    else
      render 'edit'
    end
  end
 
  def destroy
    @amezon = Amezon.find(params[:id])
    @amezon.destroy
 
    redirect_to amezons_path
  end
 
  private
    def amezon_params
      params.require(:amezon).permit(:name, :price)
    end
end
