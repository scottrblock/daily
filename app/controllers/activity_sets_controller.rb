class ActivitySetsController < ApplicationController
  # GET /activity_sets
  # GET /activity_sets.json
  def index
    @activity_sets = ActivitySet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activity_sets }
    end
  end

  # GET /activity_sets/1
  # GET /activity_sets/1.json
  def show
    @activity_set = ActivitySet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity_set }
    end
  end

  # GET /activity_sets/new
  # GET /activity_sets/new.json
  def new
    @activity_set = ActivitySet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity_set }
    end
  end

  # GET /activity_sets/1/edit
  def edit
    @activity_set = ActivitySet.find(params[:id])
  end

  # POST /activity_sets
  # POST /activity_sets.json
  def create
    @activity_set = ActivitySet.new(params[:activity_set])
    @activity_set
    
    @activity_set.user_id = current_user.id if current_user

    respond_to do |format|
      if @activity_set.save
        format.html { redirect_to @activity_set, notice: 'Activity set was successfully created.' }
        format.json { render json: @activity_set, status: :created, location: @activity_set }
      else
        format.html { render action: "new" }
        format.json { render json: @activity_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activity_sets/1
  # PUT /activity_sets/1.json
  def update
    @activity_set = ActivitySet.find(params[:id])

    respond_to do |format|
      if @activity_set.update_attributes(params[:activity_set])
        format.html { redirect_to @activity_set, notice: 'Activity set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_sets/1
  # DELETE /activity_sets/1.json
  def destroy
    @activity_set = ActivitySet.find(params[:id])
    @activity_set.destroy

    respond_to do |format|
      format.html { redirect_to activity_sets_url }
      format.json { head :no_content }
    end
  end
end
