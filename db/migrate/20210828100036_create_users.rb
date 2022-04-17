# frozen_string_literal: true

# User creation migration
class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :user_name, null: false, unique: true
      t.string :password, null: false

      t.timestamps
    end
  end
end
