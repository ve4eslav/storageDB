class CreateComponentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :component_types do |t|
      t.string :name
      t.string :label
      t.string :comment
      t.references :maintype, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
