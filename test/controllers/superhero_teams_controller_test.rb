require 'test_helper'

class SuperheroTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get superhero_teams_create_url
    assert_response :success
  end

end
