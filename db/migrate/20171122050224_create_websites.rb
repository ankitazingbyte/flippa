class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.string :name
      t.decimal :price
      t.timestamps
    end
  end
end
