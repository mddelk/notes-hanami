require "hanami"

module Notes
  class App < Hanami::App
    config.views.default_template_engine = "slim"

    config.actions.sessions = :cookie, {
      key: "notes.session",
      secret: settings.session_secret,
      expire_after: 60 * 60 * 24 * 365
    }
  end
end
