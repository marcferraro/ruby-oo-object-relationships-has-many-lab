require 'pry'

class Song
    def initialize(name, artist=nil)
        @name = name
        @artist = artist
        @@all << self
    end

    @@all = []

    attr_accessor :name, :artist

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            self.artist.name
        else
            nil
        end
    end
end