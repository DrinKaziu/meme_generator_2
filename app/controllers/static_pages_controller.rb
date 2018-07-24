class StaticPagesController < ApplicationController
  def home
    if params[:query]
      result = Gif.get_gif(params[:query])
      @search_result = result.data.map do |item|
        item.embed_url
      end
    else
      render 'home'
    end
  end
end
