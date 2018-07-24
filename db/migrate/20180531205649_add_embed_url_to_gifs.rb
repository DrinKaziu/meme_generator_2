class AddEmbedUrlToGifs < ActiveRecord::Migration[5.2]
  def change
    add_column :gifs, :embed_url, :string 
  end
end
