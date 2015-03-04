class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :post_comments, through: :posts, source: :comments

  def to_s
    name
  end

end
