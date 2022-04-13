class CreateFreebies < ActiveRecord::Migration[6.1]
  
  
  def change

    create_table :freebies do | t |

      # t.datatype :attribute_name

      t.string :item_name

      t.integer :value


      ## Foreign Keys
        t.integer :dev_id
        t.integer :company_id
      ## Foreign Keys

    end

  end


end  #### LAST  end
