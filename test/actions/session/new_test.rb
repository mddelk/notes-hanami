require "test_helper"

class Notes::Actions::Session::NewTest < Hanami::Minitest::Test
  test "works" do
    params = {}
    response = Notes::Actions::Session::New.new.call(params)

    assert_predicate response, :successful?
  end
end
