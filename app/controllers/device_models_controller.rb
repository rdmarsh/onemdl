class DeviceModelsController < ApplicationController
  respond_to :html, :xml, :json
  helper_method :sort_column, :sort_direction
  
  def index
    @device_models = DeviceModel.order(sort_column + " " + sort_direction)
    respond_with(@device_models)
  end
  
  def show
    @device_model = DeviceModel.find(params[:id])
    respond_with(@device_model)
  end
  
  def new
    @device_model = DeviceModel.new
    respond_with(@device_model)
  end
  
  def create
    @device_model = DeviceModel.new(device_model_params)
    
    if @device_model.save
      flash[:notice] = "New device type '" + @device_model.name + "' created"
    else
      flash[:error] = "Could not create device type"
    end
    respond_with(@device_model)
  end
  
  def edit
    @device_model = DeviceModel.find(params[:id])
    respond_with(@device_model)
  end
  
  def update
    @device_model = DeviceModel.find(params[:id])
    
    if @device_model.update_attributes(device_model_params)
      flash[:notice] = "Successfully updated device model '" + @device_model.name + "'"
    else
      render action: 'edit'
    end
    respond_with(@device_model)
  end
  
  def destroy
    @device_model = DeviceModel.find(params[:id])
    if @device_model.destroy
      flash[:notice] = "Successfully deleted device type '" + @device_model.name + "'"
    else
      flash[:error] = "Could not delete device type '" + @device_model.name + "'"
    end
    respond_with(@device_model)
  end
  
  private
  
  # for sorting columns
  def sort_column
    DeviceModel.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end
  
  # for allowing editing on fields
  def device_model_params
    params.require(:device_model).permit!
  end
end