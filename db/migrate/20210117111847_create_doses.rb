class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :name
      t.references :ingredient, null: false, foreign_key: true
      t.references :milkshake, null: false, foreign_key: true

      t.timestamps
    end
  end
end
