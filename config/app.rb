# frozen_string_literal: true

require "hanami"

module Notes
  class App < Hanami::App
    config.views.default_template_engine = "slim"
  end
end
