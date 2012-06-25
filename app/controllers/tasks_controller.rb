class TasksController < ApplicationController

  before_filter :find_list
  respond_to :html, :xml, :js

  def create

    @task = @list.tasks.new(params[:task])

    if @task.save
      flash[:notice] = "Item created successfully."
      redirect_to list_url(@list)
    else
      flash[:error] = "Item not created please enter description.."
      redirect_to list_url(@list)
    end
  end


  def find_list
    @list = List.find(params[:list_id])
  end

end
