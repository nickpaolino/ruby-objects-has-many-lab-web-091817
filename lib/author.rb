class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

  def add_post_by_title(message)
    post = Post.new(message)
    post.author = self
    @posts << post
    @@post_count += 1
  end
end
