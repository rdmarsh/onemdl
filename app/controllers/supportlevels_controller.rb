class SupportlevelsController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    @supportlevels = Supportlevel.order("supportlevel")
  end

  def show
    @supportlevel = Supportlevel.find(params[:id])
  end
  
  def new
    @supportlevel = Supportlevel.new
  end
  
  def create
    @supportlevel = Supportlevel.new(params[:supportlevel])
    if @supportlevel.save
      redirect_to @supportlevel, notice: "Successfully created new support level."
    else
      render :new
    end
  end
  
  def edit
    @supportlevel = Supportlevel.find(params[:id])
  end
  
  def update
    @supportlevel = Supportlevel.find(params[:id])
    if @supportlevel.update_attributes(params[:supportlevel])
      redirect_to @supportlevel, notice: "Successfully updated support level."
    else
      render :edit
    end
  end
  
  def destroy
    @supportlevel = Product.find(params[:id])
    @supportlevel.destroy
    redirect_to supportlevels_url, notice: "Successfully destroyed support level."
  end
  
  private
  def supportlevel_params    
    params.require(:supportlevel).permit(:supportlevel, :supporthours, :supportdays, :supportexclusions, :supportdescription)
  end
  
end
