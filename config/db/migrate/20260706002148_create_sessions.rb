ROM::SQL.migration do
  change do
    create_table :sessions do
      column :id, :uuid, primary_key: true, default: Sequel.function(:gen_random_uuid)
      foreign_key :user_id, :users, type: :uuid, on_delete: :cascade
      column :ip_address, String
      column :user_agent, String
      column :created_at, DateTime, null: false, default: Sequel.function(:now)
      column :updated_at, DateTime, null: false, default: Sequel.function(:now)
      index :user_id, name: :index_sessions_on_user_id
    end
  end
end
