require "test_helper"

class Notes::IndexTest < Hanami::Minitest::FeatureTest
  test "should list notes" do
    visit "/notes"

    assert_element "h1", text: "Notes::Views::Notes::Index"
  end
end
