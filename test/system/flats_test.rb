require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    puts "testing for index page"

    visit '/'

    assert_selector "h1", text: "Flats"

    puts "all good."
  end
end
