class AddOtherToCostumes < ActiveRecord::Migration
  def change
    add_column :costumes, :other, :string
  end
end
