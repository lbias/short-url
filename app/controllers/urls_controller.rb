class UrlsController < ApplicationController
  def show
    @url = Url.find_by(short_url: params[:id])
    redirect_to @url.original_url
  end
end
