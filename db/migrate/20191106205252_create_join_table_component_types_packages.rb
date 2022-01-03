class CreateJoinTableComponentTypesPackages < ActiveRecord::Migration[5.2]
  def change
    create_join_table :component_types, :packages do |t|
      t.index :component_type_id # , :package_id]
      t.index :package_id # , :component_type_id]
    end
  end
end
