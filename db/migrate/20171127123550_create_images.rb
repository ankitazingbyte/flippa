class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :website_id
      t.string :avatar

      t.timestamps
    end
  end
end
