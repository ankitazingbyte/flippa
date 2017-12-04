class AddFieldToWebsite < ActiveRecord::Migration[5.1]
  def change
    add_column :websites, :days, :string
  end
end
