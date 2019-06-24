require 'test_helper'

class PostTest < ActiveSupport::TestCase
# 1. valid record
# 2. invalid record
# 3. made with posts
# 4. can have an image

  test "making a valid record" do
    assert posts(:standard).valid?
  end

  test "making an invalid record" do
    post = Post.create
    assert post.invalid?
    assert post.errors.messages[:content], "can't be blank"
  end
end
