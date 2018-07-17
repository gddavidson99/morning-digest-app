require 'test_helper'

class DigestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get digest_index_url
    assert_response :success
  end

end
