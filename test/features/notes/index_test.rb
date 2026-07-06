require "test_helper"

class NotesIndexTest < FeatureTest
  test "should list notes" do
    visit "/notes"

    assert_element "h1", text: "Notes::Views::Notes::Index"
    assert_selector "#notes > li", count: 10
  end
end
