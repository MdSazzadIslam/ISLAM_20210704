require "test_helper"

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url
    assert_response :success
  end

  test "should get new" do
    get new_video_url
    assert_response :success
  end

  test "should create video" do
    assert_difference('Video.count') do
      post videos_url, params: { video: { categoryId: @video.categoryId, integer: @video.integer, name: @video.name, path: @video.path, size: @video.size, string: @video.string, thumbnails: @video.thumbnails, title: @video.title, file: @video.file, type: @video.type } }
    end

    assert_redirected_to video_url(Video.last)
  end

  test "should show video" do
    get video_url(@video)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_url(@video)
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { categoryId: @video.categoryId, integer: @video.integer, name: @video.name, path: @video.path, size: @video.size, string: @video.string, thumbnails: @video.thumbnails, title: @video.title, type: @video.type } }
    assert_redirected_to video_url(@video)
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete video_url(@video)
    end

    assert_redirected_to videos_url
  end
end
