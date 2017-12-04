class CreateDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :domains do |t|
      t.string :name
      t.decimal :price
      t.timestamps
    end
  end
end
