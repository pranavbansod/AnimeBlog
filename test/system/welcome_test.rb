require "application_system_test_case"

class WelcomeTest < ApplicationSystemTestCase
  test "visiting the homepage must use english by default" do
    visit root_url

    assert_selector "h1", text: "Hey there"
  end

  test "visit homepage after changing lanuage to japanese" do
    visit welcome_japanese_path

    assert_selector "h1", text: "こんにちは"
  end

  test "visit homepage after changing eng-jap-eng should render hello in English" do
    visit welcome_japanese_path

    assert_selector "h1", text: "こんにちは"

    visit welcome_english_path

    assert_selector "h1", text: "Hey there"
  end
end
