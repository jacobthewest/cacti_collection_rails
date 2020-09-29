class CreateCacti < ActiveRecord::Migration[6.0]
  def change
    create_table :cacti do |t|
      t.string :common_name, null:false
      t.string :genus, null:false
      t.string :species, null:false
      t.string :cultivar
      t.text :light_requirements
      t.text :soil_requirements
      t.text :water_requirements
      t.text :fruit
      t.text :flower
      t.text :hardiness, null:false
      t.text :fertilizer
      t.text :propagation
      t.text :growth_rate
      t.text :max_size
      t.text :interesting_facts

      t.timestamps
    end
  end
end
