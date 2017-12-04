class CreateAmezons < ActiveRecord::Migration[5.1]
  def change
    create_table :amezons do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
