class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacturer
      t.integer :release_year

      t.timestamps
    end
  end
end
