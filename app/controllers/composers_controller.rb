class ComposersController < ApplicationController
  def new
    @composer = Composer.new
  end

  def create
    @composer = Composer.create(composer_params)
    redirect_to root_path
  end

  def show
    @composer = Composer.find(params[:id])
  end

  protected
  def composer_params
    params.require(:composer).permit(:name, :profile_pic)
  end
end
