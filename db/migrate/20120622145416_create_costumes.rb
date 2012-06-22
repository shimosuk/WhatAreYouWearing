class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.string :kind, null: false
      t.string :color, null: false

      t.timestamps
    end
  end
end
