class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.references :company
      t.references :dev
      t.string :item_name
      t.integer :value

      t.timestamps
    end
  end
end
