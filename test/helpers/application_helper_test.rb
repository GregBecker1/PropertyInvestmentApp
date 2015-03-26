require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,  "Investment Property Comparison App"
    assert_equal full_title("Help"), "Help | Investment Property Comparison App"
  end
end  