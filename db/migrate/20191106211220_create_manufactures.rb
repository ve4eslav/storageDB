class CreateManufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :manufactures do |t|
      t.string :name
      t.string :url
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
