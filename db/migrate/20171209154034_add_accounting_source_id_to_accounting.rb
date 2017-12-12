class AddAccountingSourceIdToAccounting < ActiveRecord::Migration
  def change
    add_column :accountings, :accounting_source_id, :integer
  end
end
