class ListsController < ApplicationController

  respond_to :html, :xml, :js

   #By default priority is 1.If user does not select priority from drop down box ,then it should be one.

  def index
    if user_signed_in?
      #@lists = List.find(:all,:order=>["priority ASC"],:conditions=>["user_id=?" ,current_user.id]);
      @lists = List.order("priority ASC").where("user_id=?", current_user.id);
      @bbb = @lists.count
      @user = User.find(:all, :conditions=>["id=?", current_user.id]);
      @user.each do |f|
        @ppp = f.username

      end

    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    if @list.save
      flash[:notice] = "List created."
      respond_with(@list, :location => list_url(@list))
    else
      flash[:error] = "Could not create list"
      redirect_to new_list_url
    end
  end

  def show
    @list = List.find(params[:id]);
    @task = @list.tasks.new
    @task1 = Task.order("priority ASC").where("list_id =?", params[:id]);
    @aaa= @task1.count

  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      flash[:notice] = "List updated."
      respond_with(@list, :location => list_url(@list))
    else
      flash[:error] = "Could not update list"
      redirect_to edit_list_path(@list)
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      flash[:notice] = "List deleted"
      redirect_to lists_url
    else
      flash[:error] = "Could not delete list?"
      redirect_to lists_url
    end
  end

end
