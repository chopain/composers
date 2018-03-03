class StaticPagesController < ApplicationController
  def home
    @composers = Composer.all
  end

  def about
  end
end
