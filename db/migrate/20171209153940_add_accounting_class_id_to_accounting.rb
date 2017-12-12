class AddAccountingClassIdToAccounting < ActiveRecord::Migration
  def change
    add_column :accountings, :accounting_class_id, :integer
  end
end
