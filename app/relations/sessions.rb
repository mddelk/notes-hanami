module Notes
  module Relations
    class Sessions < Notes::DB::Relation
      schema :sessions, infer: true
    end
  end
end
