class Post < ApplicationRecord
  attr_accessor :t_comment_ids

  after_create :associate_with_comments

  has_many :post_comments
  has_many :comments, through: :post_comments

  def associate_with_comments
    self.comment_ids = self.t_comment_ids
  end
end
