require 'pry'

class Post
    def initialize(title, author=nil)
        @title = title
        @author = author
        @@all << self
    end

    attr_accessor :author, :title

    @@all = []

    def self.all
        @@all
    end

    def author_name
        if @author == nil
            nil
        else
            self.author.name
        end
    end
end