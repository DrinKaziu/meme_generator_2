class Gif < ApplicationRecord
  has_many :user_gifs
  has_many :users, through: :user_gifs

  def self.get_gif(query)
   api_instance = GiphyClient::DefaultApi.new

   api_key = "rZvnFOHXnKmzGYSLw2KHvN9iQUninGts" # String | Giphy API Key.

   opts = {
     limit: 32, # Integer | The maximum number of records to return.
     offset: 0, # Integer | An optional results offset. Defaults to 0.
     rating: 'r', # String | Filters results by specified rating.
     lang: 'en', # String | Specify default country for regional content; use a 2-letter ISO 639-1 country code. See list of supported languages <a href = \“../language-support\“>here</a>.
     fmt: 'json' # String | Used to indicate the expected response format. Default is Json.
    }

   q = query # String | Search query term or prhase.

   @result = api_instance.gifs_search_get(api_key, q, opts)
  end

end
