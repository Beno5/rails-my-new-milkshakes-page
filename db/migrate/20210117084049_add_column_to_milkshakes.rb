class AddColumnToMilkshakes < ActiveRecord::Migration[6.0]
  def change
    add_column :milkshakes, :name, :string
  end
end
