class CreateMilkshakes < ActiveRecord::Migration[6.0]
  def change
    create_table :milkshakes do |t|
      t.string :description
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
