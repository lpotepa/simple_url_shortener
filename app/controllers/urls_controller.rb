class UrlsController < ApplicationController
  after_action :remove_flash

  def index
  end

  def create
    @url = UrlService.new(url_params).create
    if @url.valid?
      flash[:success] = "Successfully generated a link: #{root_url}#{@url.slug}"
    else
      flash[:error] = @url.errors.full_messages.join(',')
    end
  end

  private

  def url_params
    params.permit(:url).require(:url)
  end

  def remove_flash
    flash.discard
  end
end
