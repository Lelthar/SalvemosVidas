require "application_system_test_case"

class ForumPostsTest < ApplicationSystemTestCase
  setup do
    @forum_post = forum_posts(:one)
  end

  test "visiting the index" do
    visit forum_posts_url
    assert_selector "h1", text: "Forum Posts"
  end

  test "creating a Forum post" do
    visit forum_posts_url
    click_on "New Forum Post"

    fill_in "Category", with: @forum_post.category
    fill_in "Datail", with: @forum_post.datail
    fill_in "Title", with: @forum_post.title
    fill_in "User", with: @forum_post.user_id
    click_on "Create Forum post"

    assert_text "Forum post was successfully created"
    click_on "Back"
  end

  test "updating a Forum post" do
    visit forum_posts_url
    click_on "Edit", match: :first

    fill_in "Category", with: @forum_post.category
    fill_in "Datail", with: @forum_post.datail
    fill_in "Title", with: @forum_post.title
    fill_in "User", with: @forum_post.user_id
    click_on "Update Forum post"

    assert_text "Forum post was successfully updated"
    click_on "Back"
  end

  test "destroying a Forum post" do
    visit forum_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Forum post was successfully destroyed"
  end
end
