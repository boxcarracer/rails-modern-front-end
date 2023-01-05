class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.belongs_to :vanue, null: false, foreign_key: true
      t.text :genre_tags
      t.string :ilk, enum_name: :enum_ilk
      t.string :access, enum_name: :enum_access

      t.timestamps
    end
  end
end
