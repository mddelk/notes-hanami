module Notes
  class Routes < Hanami::Routes
    # Add your routes here. See https://hanakai.org/learn/hanami/routing/ for details.
    get "/notes", to: "notes.index"
    get "/session/new", to: "session.new"
    post "/session", to: "session.create"
  end
end
