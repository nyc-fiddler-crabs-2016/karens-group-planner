class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :date
      t.string :location
      t.text :description
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
