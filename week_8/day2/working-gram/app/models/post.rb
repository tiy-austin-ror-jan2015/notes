class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def to_s
    title.truncate(15)
  end

  def hi
    'foo'
  end

end
