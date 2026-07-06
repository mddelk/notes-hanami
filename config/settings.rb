module Notes
  class Settings < Hanami::Settings
    setting :session_secret, constructor: Types::String
  end
end
