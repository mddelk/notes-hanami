module Notes
  module Relations
    class Users < Notes::DB::Relation
      schema :users, infer: true
    end
  end
end
