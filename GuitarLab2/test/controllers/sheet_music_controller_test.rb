require 'test_helper'

class SheetMusicControllerTest < ActionDispatch::IntegrationTest
  test "should get song1" do
    get sheet_music_song1_url
    assert_response :success
  end

  test "should get song2" do
    get sheet_music_song2_url
    assert_response :success
  end

  test "should get song3" do
    get sheet_music_song3_url
    assert_response :success
  end

  test "should get song4" do
    get sheet_music_song4_url
    assert_response :success
  end

  test "should get song5" do
    get sheet_music_song5_url
    assert_response :success
  end

  test "should get song6" do
    get sheet_music_song6_url
    assert_response :success
  end

  test "should get song7" do
    get sheet_music_song7_url
    assert_response :success
  end

  test "should get song8" do
    get sheet_music_song8_url
    assert_response :success
  end

  test "should get song9" do
    get sheet_music_song9_url
    assert_response :success
  end

  test "should get song10" do
    get sheet_music_song10_url
    assert_response :success
  end

end
