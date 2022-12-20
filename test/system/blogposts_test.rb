require "application_system_test_case"

class BlogpostsTest < ApplicationSystemTestCase
  setup do
    @blogpost = blogposts(:one)
  end

  test "visiting the index" do
    visit blogposts_url
    assert_selector "h1", text: "Blogposts"
  end

  test "creating a Blogpost" do
    visit blogposts_url
    click_on "New Blogpost"

    fill_in "Body", with: @blogpost.body
    fill_in "Extra1", with: @blogpost.extra1
    fill_in "Extra2", with: @blogpost.extra2
    fill_in "Extra3", with: @blogpost.extra3
    fill_in "Extra4", with: @blogpost.extra4
    fill_in "Name", with: @blogpost.name
    fill_in "Post", with: @blogpost.post_id
    fill_in "Time", with: @blogpost.time
    click_on "Create Blogpost"

    assert_text "Blogpost was successfully created"
    click_on "Back"
  end

  test "updating a Blogpost" do
    visit blogposts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @blogpost.body
    fill_in "Extra1", with: @blogpost.extra1
    fill_in "Extra2", with: @blogpost.extra2
    fill_in "Extra3", with: @blogpost.extra3
    fill_in "Extra4", with: @blogpost.extra4
    fill_in "Name", with: @blogpost.name
    fill_in "Post", with: @blogpost.post_id
    fill_in "Time", with: @blogpost.time
    click_on "Update Blogpost"

    assert_text "Blogpost was successfully updated"
    click_on "Back"
  end

  test "destroying a Blogpost" do
    visit blogposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blogpost was successfully destroyed"
  end
end
