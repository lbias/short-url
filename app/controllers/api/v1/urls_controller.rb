class Api::V1::UrlsController < ApiController
  def create
    @url = current_user.urls.new(url_params)
    if @url.save
      render json: @url, status: :created
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
