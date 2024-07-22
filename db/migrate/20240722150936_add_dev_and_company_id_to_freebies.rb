class AddDevAndCompanyIdToFreebies < ActiveRecord::Migration[6.1]
  def change
    add_column :freebies, :dev_id, :integer
    add_column :freebies, :company_id, :integer
  end
end
