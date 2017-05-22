require 'test_helper'

class ProfileInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_info = profile_infos(:one)
  end

  test "should get index" do
    get profile_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_info_url
    assert_response :success
  end

  test "should create profile_info" do
    assert_difference('ProfileInfo.count') do
      post profile_infos_url, params: { profile_info: { bio: @profile_info.bio, faveMusic: @profile_info.faveMusic, firstName: @profile_info.firstName, lasName: @profile_info.lasName } }
    end

    assert_redirected_to profile_info_url(ProfileInfo.last)
  end

  test "should show profile_info" do
    get profile_info_url(@profile_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_info_url(@profile_info)
    assert_response :success
  end

  test "should update profile_info" do
    patch profile_info_url(@profile_info), params: { profile_info: { bio: @profile_info.bio, faveMusic: @profile_info.faveMusic, firstName: @profile_info.firstName, lasName: @profile_info.lasName } }
    assert_redirected_to profile_info_url(@profile_info)
  end

  test "should destroy profile_info" do
    assert_difference('ProfileInfo.count', -1) do
      delete profile_info_url(@profile_info)
    end

    assert_redirected_to profile_infos_url
  end
end
