class CreateFreebieTable < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.references :company, foreign_key: true
      t.references :dev, foreign_key: true
    end
  end
end
