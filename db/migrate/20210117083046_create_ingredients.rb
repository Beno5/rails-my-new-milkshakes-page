class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :dose
      t.references :user, null: true, foreign_key: true
      t.references :milkshakes, null: true, foreign_key: true

      t.timestamps
    end
  end
end
