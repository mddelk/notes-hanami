ROM::SQL.migration do
  change do
    create_table :users do
      column :id, :uuid, primary_key: true, default: Sequel.function(:gen_random_uuid)
      column :email_address, String, null: false
      column :password_digest, String, null: false
      column :created_at, DateTime, null: false, default: Sequel.function(:now)
      column :updated_at, DateTime, null: false, default: Sequel.function(:now)
      index :email_address, unique: true, name: :index_users_on_email_address
    end
  end
end
