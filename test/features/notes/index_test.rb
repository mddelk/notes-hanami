require "test_helper"

class Notes::IndexTest < Hanami::Minitest::FeatureTest
  test "should list notes" do
    visit "/notes"

    assert_element "h1", text: "Notes"
    assert_selector "#notes > li > article > h2", count: 10
  end
end
