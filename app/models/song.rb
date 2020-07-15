class Song < ActiveRecord::Base
    has_many :song_genres
    has_many :genres, through: :song_genres
    belongs_to :artist

    def slug
        self.name.split.join("-").downcase
    end

    def self.find_by_slug(slug)
        downcase_song_name = slug.split("-").join(" ")
        self.all.find { |song| song.name.downcase == downcase_song_name }
    end
end