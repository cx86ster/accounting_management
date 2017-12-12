class RemoveAccountingClassToAccountings < ActiveRecord::Migration
  def change
    remove_column :accountings, :accounting_class, :string
  end
end
