require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @link = User.first.links.create(url: "www.google.com")

  end

  test "should be valid" do
    assert @link.valid?
  end

  test "url should be present" do
    @link.url = "     "
    assert_not @link.valid?
  end

   test "url should be an url" do
    @link.url = "thpthpthp"
    assert_not @link.valid?
  end
end
