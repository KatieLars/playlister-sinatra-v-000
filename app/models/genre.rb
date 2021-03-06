class Genre < ActiveRecord::Base
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
  has_many :song_genres

  def slug
    name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    genre_name = slug.gsub("-", " ").upcase
    self.all.detect {|genre| genre.name.upcase == genre_name}
  end
end
