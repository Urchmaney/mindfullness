class AddCallerId < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :caller_id, :string
    add_column :session_helpers, :caller_id, :string
  end
end
