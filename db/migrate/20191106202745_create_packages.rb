class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :modification
      t.string :alternative
      t.integer :npin
      t.integer :sizel
      t.integer :sizew
      t.integer :sizeh
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
