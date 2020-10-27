require "test_helper"

class PostCommentTest < ActiveSupport::TestCase
  def test_association_stuff
    comment = Comment.create!
    post = Post.create!(t_comment_ids: [comment.id])

    assert_equal 1, post.comments.count
  end
end
