class IncidentsController < ApplicationController

  before_action :require_login

  def new
    @incident ||= current_user.incidents.new
  end

  def create
    @incident = current_user.incidents.new(incident_params)
    if @incident.save
      # Handle successful save
      flash[:success] = 'Incident created successfully.'
      redirect_to root_path
      response.headers['status'] ='success'
    else
      response.headers['status'] ='failed'
      render 'incidents/new'
    end
  end

  def edit
    @incident ||= Incident.find_by_id(params[:id])
    redirect_to root_path if @incident.nil?
  end

  def update
    # Still hacky
    # Sets the incident with id as params[:id] as private
    # Keeps the same incident_id to mark as a update
    # ToDo: Revisit this
    @incident = current_user.incidents.new(incident_params)
    @incident[:incident_id] = params[:id]
    if @incident.save
      response.headers['status'] ='success'
      flash[:success] = 'Updated incident successfully.'
      redirect_to root_path
      i = Incident.find_by_id(params[:id])
      i.public = false
      i.save
    else
      response.headers['status'] ='failed'
      redirect_to "/incidents/#{@incident.id}"
    end
  end

  def delete
    #ToDo: Warn the user
    i = Incident.find_by_id(params[:id])
    if !!i
      response.headers['status'] = 'success'
      i.delete
      flash[:success] = 'Incident deleted successfully.'
    else
      response.headers['status'] = 'failed'
      flash[:danger] = 'Failed to delete incident.'
    end
    redirect_to root_url
  end

  private
  def incident_params
    params.require(:incident).permit(:name, :message, :begins, :ends, :component)
  end
end
