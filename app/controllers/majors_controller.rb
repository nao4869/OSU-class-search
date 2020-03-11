class MajorsController < ApplicationController
  before_action :set_major, only: [:show, :edit, :update, :destroy]

  # GET /majors
  def index
    @majors = Major.all
  end

  # GET /majors/1
  def show
    @institution = Institution.find(@major.institution_id)
  end

  # GET /majors/new
  def new
    @institution = Institution.find(params[:institution_id])
    @major = @institution.majors.new
  end

  # GET /majors/1/edit
  def edit
    @institution = Institution.find(@major.institution_id)
  end

  # POST /majors
  def create
    @major = Major.new(major_params)
    @institution = Institution.find(@major.institution_id)

    @major.save
    if @major.save
      flash[:success] = "New major has been created"
      redirect_to major_path(@major)
    else 
      render 'new'
    end
  end

  # PATCH/PUT /majors/1
  def update
    respond_to do |format|
      if @major.update(major_params)
        format.html { redirect_to @major, notice: 'Major was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /majors/1
  def destroy
    @institution = Institution.find(@major.institution_id)
    @major.destroy
    
    flash[:success] = 'Major was successfully destroyed.'
    redirect_to institution_path(@institution)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_major
      @major = Major.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def major_params
      params.require(:major).permit(
        :majorname, 
        :description, 
        :institution_id,
        courses_attributes: [:coursename, :course_content, :prerequisite, :proctoredexams, :groupwork, :textbook]
      )
    end
end
