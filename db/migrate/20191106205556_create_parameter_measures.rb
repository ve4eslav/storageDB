class CreateParameterMeasures < ActiveRecord::Migration[5.2]
  def change
    create_table :parameter_measures do |t|
      t.string :name
      t.string :unit
      t.string :comment

      t.timestamps
    end
  end
end
