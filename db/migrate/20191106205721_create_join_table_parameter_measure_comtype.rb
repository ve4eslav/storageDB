class CreateJoinTableParameterMeasureComtype < ActiveRecord::Migration[5.2]
  def change
    create_join_table :component_types, :parameter_measures do |t|
      t.index :component_type_id # , :parameter_measure_id]
      t.index :parameter_measure_id # , :component_type_id]
    end
  end
end
