class AddFieldToDomain < ActiveRecord::Migration[5.1]
  def change
    add_column :domains, :days, :string
  end
end
