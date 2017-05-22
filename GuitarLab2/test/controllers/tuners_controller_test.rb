require 'test_helper'

class TunersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuner = tuners(:one)
  end

  test "should get index" do
    get tuners_url
    assert_response :success
  end

  test "should get new" do
    get new_tuner_url
    assert_response :success
  end

  test "should create tuner" do
    assert_difference('Tuner.count') do
      post tuners_url, params: { tuner: { tunerName: @tuner.tunerName } }
    end

    assert_redirected_to tuner_url(Tuner.last)
  end

  test "should show tuner" do
    get tuner_url(@tuner)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuner_url(@tuner)
    assert_response :success
  end

  test "should update tuner" do
    patch tuner_url(@tuner), params: { tuner: { tunerName: @tuner.tunerName } }
    assert_redirected_to tuner_url(@tuner)
  end

  test "should destroy tuner" do
    assert_difference('Tuner.count', -1) do
      delete tuner_url(@tuner)
    end

    assert_redirected_to tuners_url
  end
end
