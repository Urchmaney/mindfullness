class AddSessionHelper < ActiveRecord::Migration[6.1]
  def change
    create_table :session_helpers do |t|
      t.string :full_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
