require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
     comment = comments(:one)
     assert_equal "MyString", comment.username
   end

end
