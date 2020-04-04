require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end
end
