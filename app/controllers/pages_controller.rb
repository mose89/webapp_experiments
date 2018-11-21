class PagesController < ApplicationController

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to(pages_path)
    else
      render('new')
    end

  end

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.save
      redirect_to(pages_path)
    else
      render('edit')
    end

  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    if @page.save
      redirect_to(pages_path)
    else
      render('delete')
    end

  end

end
