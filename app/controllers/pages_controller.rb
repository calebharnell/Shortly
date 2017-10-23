class PagesController < ApplicationController
  def search
  end

  def result
    @link = Link.new(link_params)
    @link.save

    @hash = @link.id.to_s(36)
  end

  def redirect
    id = params[:hash].to_i(36)
    link = Link.find(id)
    redirect_to link.original_url
  end

  private

  def link_params
    params.require(:link).permit(:original_url)
  end

end
