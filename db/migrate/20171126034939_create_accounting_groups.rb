class CreateAccountingGroups < ActiveRecord::Migration
  def change
    create_table :accounting_groups do |t|
      t.string :accounting_group_code
      t.string :accounting_group_name
      t.integer :accounting_class
      t.timestamp :deleted_at

      t.timestamps null: false
    end
    add_index :accounting_groups, :accounting_group_code, unique: true
  end
end
