class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.string :name
      t.string :comment
      t.references :component_type, foreign_key: true
      t.references :package, foreign_key: true
      t.references :manufacture, foreign_key: true

      t.timestamps
    end
  end
end
