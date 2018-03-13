class ComposersController < ApplicationController
  def new
    @composer = Composer.new
  end

  def create
    @composer = Composer.create(composer_params)
    redirect_to composer_path
  end

  def edit
    @composer = Composer.find(params[:id])
  end

  def update
    @composer = Composer.find(params[:id])
    if @composer.update(composer_params)
      redirect_to composer_path
    else
      render :edit
    end
  end

  def show
    @composer = Composer.find(params[:id])
    @compositions = @composer.compositions
    @links = @compositions.pluck :version
  end

  protected
  def composer_params
    params.require(:composer).permit(:name, :profile_pic, :bio, compositions_attributes: [:id, :name, :year, :version, :link, :_destroy])
  end
end
