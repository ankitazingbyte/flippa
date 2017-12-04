class WebsitesController < ApplicationController
	def index
    @search = Website.search(params[:q])
    @websites = @search.result
  @search = Domain.search(params[:q])
  @domains = @search.result
   @search = App.search(params[:q])
  @apps = @search.result
  end
 
  def show
    @website = Website.find(params[:id])
     @images = @website.images.all
  end
 
  def new
    @website = Website.new
    @image = @website.images.build
  end
 
  def edit
    @website = Website.find(params[:id])
  end
 
  def create
    @website = Website.new(website_params)
    respond_to do |format|
      if @website.save
        images.avatar.each do |a|
            @image = @website.images.create!(:avatar => a)
        end
         format.html { redirect_to @website, notice: 'Post was successfully created.' }
        redirect_to @website
      else
        format.html { render action: 'new' }
      end
    end
  end
 
  def update
    @website = Website.find(params[:id])
 
    if @website.update(website_params)
      redirect_to @website
    else
      render 'edit'
    end
  end
 
  def destroy
    @website = Website.find(params[:id])
    @website.destroy
 
    redirect_to websites_path
  end
 
  private
    def website_params
      params.require(:website).permit(:name, :price, :days, :avatar, images_attributes: [:id, :website_id, :avatar])
    end
end
