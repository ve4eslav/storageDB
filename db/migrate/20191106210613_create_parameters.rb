class CreateParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :parameters do |t|
      t.references :parameter_measure, foreign_key: true
      t.float :value
      t.integer :multiplier
      t.references :component, foreign_key: true

      t.timestamps
    end
  end
end
