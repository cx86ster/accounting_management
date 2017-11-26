class ChangeDatatypeAccountingClassOfAccountingGroups < ActiveRecord::Migration
  def change
    change_column :accounting_groups, :accounting_class, :string
  end
end
