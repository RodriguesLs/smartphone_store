class CreateSells < ActiveRecord::Migration[6.1]
  def change
    create_table :sells do |t|
      t.datetime :date
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
