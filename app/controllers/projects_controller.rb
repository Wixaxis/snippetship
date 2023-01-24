# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :assign_variables, only: [:subscribe]

  def index; end

  def show
    @project = Project.find(params[:id])
  end

  def update; end

  def create
    Project.create_with_owner(name: params[:name], folder_name: params[:folder_name], user: current_user)
  end

  def subscribe
    if user_subscribed?
      current_user.projects.delete(@project)
    else
      current_user.projects << @project
    end
    current_user.save
    p user_subscribed? ? 'User subscribed' : 'User unsubscribed'
    redirect_back(fallback_location: root_path)
  end

  private

  def user_subscribed?
    current_user.projects.pluck(:id).include?(params[:project_id].to_i)
  end

  def assign_variables
    @project = Project.find(params[:project_id])
  end
end
