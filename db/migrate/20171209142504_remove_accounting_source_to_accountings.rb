class RemoveAccountingSourceToAccountings < ActiveRecord::Migration
  def change
    remove_column :accountings, :accounting_source, :string
  end
end
