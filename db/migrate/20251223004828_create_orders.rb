class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.string :what
      t.datetime :expires_on
      t.integer :expires_in
      t.integer :limit
      t.string :uid
      t.timestamps
    end
  end
end
