require "test_helper"

class Notes::Actions::Notes::IndexTest < Hanami::Minitest::Test
  test "works" do
    params = {}
    response = Notes::Actions::Notes::Index.new.call(params)

    assert_predicate response, :successful?
  end
end
