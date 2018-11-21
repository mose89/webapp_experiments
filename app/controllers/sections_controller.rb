class SectionsController < ApplicationController
  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.save
      redirect_to(sections_path)
    else
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to(subjects_path)
  end

  private

  def section_params
    params.require(:section).permit(:name, :page_id, :position, :visible, :content_type)
  end

end
