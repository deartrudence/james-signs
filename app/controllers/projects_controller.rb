class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :toggle_recent]
  
  def sort
    @project = Project.find(params[:id])
    @project.attributes = params.require(:project).permit(:project_order_position)
    @project.save
    # this action will be called via ajax
    render body: nil
  end

  def toggle_recent
    response = @project.recent ? false : true
    @project.update(recent: response)
  end

  # GET /projects
  # GET /projects.json
  def index
    @sub_categories = SubCategory.all
    @projects = Project.all
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.pictures.build
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /projects/1/edit
  def edit
    @project.pictures.build
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to edit_project_path(@project), notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: edit_project_path(@project) }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to edit_project_path(@project), notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:sub_category_id, :title, :description, :item_number, :size, :materials, :recent, pictures_attributes:[:id, :title, :image, :_destroy])
    end
end
