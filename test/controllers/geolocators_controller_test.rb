require 'test_helper'

class GeolocatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get geolocators_create_url
    assert_response :success
  end

end
