require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "creating a Blog" do
    visit blogs_url
    click_on "New Blog"

    fill_in "Article", with: @blog.article
    fill_in "Comments", with: @blog.comments
    fill_in "Image", with: @blog.image
    fill_in "Randomfield1", with: @blog.randomfield1
    fill_in "Randomfield2", with: @blog.randomfield2
    fill_in "Randomfield3", with: @blog.randomfield3
    fill_in "Time", with: @blog.time
    fill_in "Title", with: @blog.title
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit blogs_url
    click_on "Edit", match: :first

    fill_in "Article", with: @blog.article
    fill_in "Comments", with: @blog.comments
    fill_in "Image", with: @blog.image
    fill_in "Randomfield1", with: @blog.randomfield1
    fill_in "Randomfield2", with: @blog.randomfield2
    fill_in "Randomfield3", with: @blog.randomfield3
    fill_in "Time", with: @blog.time
    fill_in "Title", with: @blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
