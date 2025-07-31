class CreateFreebies < ActiveRecord::Migration[8.0]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value

      t.timestamps
    end
  end
end
