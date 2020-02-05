require "application_system_test_case"

class VideoClipsTest < ApplicationSystemTestCase
  setup do
    @video_clip = video_clips(:one)
  end

  test "visiting the index" do
    visit video_clips_url
    assert_selector "h1", text: "Video Clips"
  end

  test "creating a Video clip" do
    visit video_clips_url
    click_on "New Video Clip"

    click_on "Create Video clip"

    assert_text "Video clip was successfully created"
    click_on "Back"
  end

  test "updating a Video clip" do
    visit video_clips_url
    click_on "Edit", match: :first

    click_on "Update Video clip"

    assert_text "Video clip was successfully updated"
    click_on "Back"
  end

  test "destroying a Video clip" do
    visit video_clips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Video clip was successfully destroyed"
  end
end
