require 'pry'

class Author
    def initialize(name)
        @name = name
    end

    attr_accessor :name

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        Post.all.count
    end
end