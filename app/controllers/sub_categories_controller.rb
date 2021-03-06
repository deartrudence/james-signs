class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]
  def sort
    @sub_category = SubCategory.find(params[:id])
    @sub_category.attributes = params.require(:sub_category).permit(:sub_category_order_position)
    @sub_category.save
    # this action will be called via ajax
    render body: nil
  end
  # GET /sub_categories
  # GET /sub_categories.json
  def index
    @portfolio_sections = PortfolioSection.all
    @sub_categories = SubCategory.all
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /sub_categories/1
  # GET /sub_categories/1.json
  def show
    add_breadcrumb "Main", main_page_path
    add_breadcrumb "Portfolio", portfolio_sections_path
    add_breadcrumb "#{@sub_category.portfolio_section.title}", portfolio_sections_path(anchor:  @sub_category.portfolio_section.title.parameterize)
    add_breadcrumb "#{@sub_category.title}"
    @project = @sub_category.projects.first
    if params[:project_id]
      @project = Project.find(params[:project_id])
      render :project_modal
    end
  end

  # GET /sub_categories/new
  def new
    @sub_category = SubCategory.new
    @sub_category.pictures.build
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /sub_categories/1/edit
  def edit
    @sub_category.pictures.build
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # POST /sub_categories
  # POST /sub_categories.json
  def create
    @sub_category = SubCategory.new(sub_category_params)
    # @sub_category.pictures.build
    # raise 'hell'
    respond_to do |format|
      if @sub_category.save
        format.html { redirect_to edit_sub_category_path(@sub_category), notice: 'Sub category was successfully created.' }
        format.json { render :show, status: :created, location: @sub_category }
      else
        format.html { render :new }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_categories/1
  # PATCH/PUT /sub_categories/1.json
  def update
    respond_to do |format|
      if @sub_category.update(sub_category_params)
        format.html { redirect_to edit_sub_category_path(@sub_category), notice: 'Sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_category }
      else
        format.html { render :edit }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_categories/1
  # DELETE /sub_categories/1.json
  def destroy
    @sub_category.destroy
    respond_to do |format|
      format.html { redirect_to sub_categories_url, notice: 'Sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_category
      @sub_category = SubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_category_params
      params.require(:sub_category).permit(:portfolio_section_id, :title, :description, :pictureable, pictures_attributes:[:id, :title, :image, :_destroy])
    end
end
