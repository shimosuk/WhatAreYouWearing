class ResetNotNullConstraintForColor < ActiveRecord::Migration
  def up
    change_column :costumes, :color, :string
  end

  def down
    change_column :costumes, :color, :string, null: false
  end
end
