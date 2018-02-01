require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @comment = Link.first.comments.new(body: " je suis un commentaire")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "username should be present" do
    @comment.body = "     "
    assert_not @comment.valid?
  end
end
