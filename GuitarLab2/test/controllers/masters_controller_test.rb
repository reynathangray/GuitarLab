require 'test_helper'

class MastersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get masters_home_url
    assert_response :success
  end

  test "should get guitarTuner" do
    get masters_guitarTuner_url
    assert_response :success
  end

  test "should get lessonPage" do
    get masters_lessonPage_url
    assert_response :success
  end

  test "should get musicLibrary" do
    get masters_musicLibrary_url
    assert_response :success
  end

  test "should get sheetMusic" do
    get masters_sheetMusic_url
    assert_response :success
  end

  test "should get welcomePage" do
    get masters_welcomePage_url
    assert_response :success
  end

end
