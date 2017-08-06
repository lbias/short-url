class UrlsController < ApplicationController
  def show
    @url = Url.find_by(short_url: params[:id])
    @url.logs.create(ip: request.ip, referer: request.referer, user_agent: request.user_agent)
    redirect_to @url.original_url
  end
end
