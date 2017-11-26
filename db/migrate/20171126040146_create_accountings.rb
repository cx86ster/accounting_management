class CreateAccountings < ActiveRecord::Migration
  def change
    create_table :accountings do |t|
      t.date :accounting_date
      t.integer :accounting_money
      t.string :item_name
      t.integer :accounting_group_id
      t.string :purchase_place
      t.string :accounting_source
      t.string :accounting_class

      t.timestamps null: false
    end
  end
end
