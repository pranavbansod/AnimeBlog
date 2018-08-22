require "application_system_test_case"

class AnimeBlogsTest < ApplicationSystemTestCase
  test "visiting anime blogs path" do
    visit anime_blogs_path
    assert_selector "h1", text: "Listing"
    assert_selector "h3", text: "Blog By"
    assert_selector "p", text: "Pranav"
  end

  test "creating an anime blog" do
    visit root_url
    visit welcome_english_path
    click_on "Create New Blog"

    fill_in "Blog by", with: "Pranav"
    fill_in "Anime name", with: "Tokyo Ghoul"
    fill_in "Desc", with: "Tokyo Ghoul is a Japanese dark fantasy manga series written and illustrated by Sui Ishida."

    within 'form' do
      find('#create_blog').click
    end

    assert_text "Tokyo Ghoul"
    assert_text "Tokyo Ghoul is a Japanese dark fantasy manga series written and illustrated by Sui Ishida."
  end
end
