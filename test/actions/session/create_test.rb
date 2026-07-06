require "test_helper"

class Notes::Actions::Session::CreateTest < Hanami::Minitest::Test
  test "works" do
    params = {}
    response = Notes::Actions::Session::Create.new.call(params)

    assert_predicate response, :successful?
  end
end
