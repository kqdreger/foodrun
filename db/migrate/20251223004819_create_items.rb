class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.integer :order_id
      t.string :description
      t.string :name
      t.timestamps
    end
  end
end
