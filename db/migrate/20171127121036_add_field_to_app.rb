class AddFieldToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :days, :string
  end
end
