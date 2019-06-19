class RedirectsController < ApplicationController
  def index
    url = Url.find_by(slug: params[:slug])
    if url
      redirect_to url.url
    else
      flash[:error] = "Url not found."
      redirect_to root_path
    end
  end
end
