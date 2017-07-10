class BeforeAndAftersController < ApplicationController
  before_action :set_before_and_after, only: [:show, :edit, :update, :destroy]

  def sort
    @before_and_after = BeforeAndAfter.find(params[:id])
    @before_and_after.attributes = params.require(:before_and_after).permit(:before_and_after_order_position)
    @before_and_after.save
    # this action will be called via ajax
    render body: nil
  end

  # GET /before_and_afters
  # GET /before_and_afters.json
  def index
    @before_and_afters = BeforeAndAfter.all
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /before_and_afters/1
  # GET /before_and_afters/1.json
  def show
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /before_and_afters/new
  def new
    @before_and_after = BeforeAndAfter.new
    @before_and_after.pictures.build
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # GET /before_and_afters/1/edit
  def edit
    @before_and_after.pictures.build
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # POST /before_and_afters
  # POST /before_and_afters.json
  def create
    @before_and_after = BeforeAndAfter.new(before_and_after_params)

    respond_to do |format|
      if @before_and_after.save
        format.html { redirect_to edit_before_and_after_path(@before_and_after), notice: 'Before and after was successfully created.' }
        format.json { render :show, status: :created, location: @before_and_after }
      else
        format.html { render :new }
        format.json { render json: @before_and_after.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /before_and_afters/1
  # PATCH/PUT /before_and_afters/1.json
  def update
    respond_to do |format|
      if @before_and_after.update(before_and_after_params)
        format.html { redirect_to edit_before_and_after_path(@before_and_after), notice: 'Before and after was successfully updated.' }
        format.json { render :show, status: :ok, location: @before_and_after }
      else
        format.html { render :edit }
        format.json { render json: @before_and_after.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /before_and_afters/1
  # DELETE /before_and_afters/1.json
  def destroy
    @before_and_after.destroy
    respond_to do |format|
      format.html { redirect_to before_and_afters_url, notice: 'Before and after was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_before_and_after
      @before_and_after = BeforeAndAfter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def before_and_after_params
      params.require(:before_and_after).permit(:title, :description, :date, :pictureable, pictures_attributes:[:id, :title, :image, :description, :_destroy])
    end
end
