require 'pry'

class Artist
    def initialize (name)
        @name = name
        # if !@@artists.include?(name)
        #     @@artists << self
        # end
    end

    #@@artists = []

    attr_accessor :name

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.count
    end
end