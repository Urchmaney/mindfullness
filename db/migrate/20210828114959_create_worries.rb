class CreateWorries < ActiveRecord::Migration[6.1]
  def change
    create_table :worries do |t|
      t.text :description
      t.string :recording_url
      t.string :title, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
