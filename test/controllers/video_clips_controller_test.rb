require 'test_helper'

class VideoClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_clip = video_clips(:one)
  end

  test "should get index" do
    get video_clips_url
    assert_response :success
  end

  test "should get new" do
    get new_video_clip_url
    assert_response :success
  end

  test "should create video_clip" do
    assert_difference('VideoClip.count') do
      post video_clips_url, params: { video_clip: {  } }
    end

    assert_redirected_to video_clip_url(VideoClip.last)
  end

  test "should show video_clip" do
    get video_clip_url(@video_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_clip_url(@video_clip)
    assert_response :success
  end

  test "should update video_clip" do
    patch video_clip_url(@video_clip), params: { video_clip: {  } }
    assert_redirected_to video_clip_url(@video_clip)
  end

  test "should destroy video_clip" do
    assert_difference('VideoClip.count', -1) do
      delete video_clip_url(@video_clip)
    end

    assert_redirected_to video_clips_url
  end
end
